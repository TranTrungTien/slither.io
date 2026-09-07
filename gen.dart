import 'dart:io';

// Danh sách thư mục loại trừ
const Set<String> excludedDirectories = {
  '.git',
  '.dart_tool',
  'build',
  'android',
  'ios',
  'web',
  'windows',
  'macos',
  'linux',
  'coverage',
  '.idea',
  '.vscode',
};

// Danh sách hậu tố file tự động generate hoặc file rác cần bỏ qua
const List<String> excludedFileSuffixes = [
  '.g.dart',
  '.freezed.dart',
  '.gr.dart',
  '.config.dart',
  'pubspec.lock',
];

// Danh sách định dạng media/asset không đọc nội dung text
const Set<String> binaryExtensions = {
  '.png', '.jpg', '.jpeg', '.gif', '.webp', '.svg', '.ico',
  '.mp3', '.wav', '.ogg', '.flac',
  '.ttf', '.otf',
  '.zip', '.tar', '.gz',
  '.atlas', '.json', // Với game, bỏ qua json/atlas nếu quá lớn (có thể bỏ khỏi set này nếu muốn đọc)
};

void main() async {
  final stopwatch = Stopwatch()..start();
  final outputFile = File('project_context.md');
  final buffer = StringBuffer();

  buffer.writeln('# Project Context Dump');
  buffer.writeln('Generated at: ${DateTime.now().toIso8601String()}\n');

  // 1. Đọc pubspec.yaml để AI nắm dependencies/assets
  final pubspecFile = File('pubspec.yaml');
  if (await pubspecFile.exists()) {
    buffer.writeln('## Project Configuration (`pubspec.yaml`)\n');
    buffer.writeln('```yaml');
    buffer.writeln(await pubspecFile.readAsString());
    buffer.writeln('```\n');
  }

  final libDir = Directory('lib');

  if (await libDir.exists()) {
    // 2. Tạo cây thư mục (File Tree) giúp AI hiểu cấu trúc tổng thể
    buffer.writeln('## Directory Structure (`lib/`)\n');
    buffer.writeln('```');
    _buildTree(libDir, '', buffer);
    buffer.writeln('```\n');

    // 3. Đọc chi tiết nội dung từng file source code
    buffer.writeln('## Source Code Files\n');
    await _exportDirectoryContent(libDir, buffer);
  } else {
    print('Error: Directory "lib" not found.');
    return;
  }

  await outputFile.writeAsString(buffer.toString());
  stopwatch.stop();
  print('Success: Exported context to ${outputFile.path} in ${stopwatch.elapsedMilliseconds}ms');
}

void _buildTree(Directory dir, String indent, StringBuffer buffer) {
  final entities = dir.listSync().where((entity) {
    final name = entity.path.split(Platform.pathSeparator).last;
    if (entity is Directory && excludedDirectories.contains(name)) return false;
    if (entity is File && _isExcludedFile(name)) return false;
    return true;
  }).toList()
    ..sort((a, b) => a.path.compareTo(b.path));

  for (var i = 0; i < entities.length; i++) {
    final entity = entities[i];
    final isLast = i == entities.length - 1;
    final name = entity.path.split(Platform.pathSeparator).last;
    final connector = isLast ? '└── ' : '├── ';

    buffer.writeln('$indent$connector$name');

    if (entity is Directory) {
      final childIndent = indent + (isLast ? '    ' : '│   ');
      _buildTree(entity, childIndent, buffer);
    }
  }
}

Future<void> _exportDirectoryContent(Directory dir, StringBuffer buffer) async {
  final entities = dir.listSync(recursive: true);

  for (final entity in entities) {
    if (entity is File) {
      final relativePath = entity.path.replaceAll('\\', '/');

      // Kiểm tra xem file có thuộc thư mục hoặc tên bị cấm không
      if (_shouldSkipPath(relativePath)) continue;

      final extension = _getExtension(relativePath);
      if (binaryExtensions.contains(extension)) continue;

      try {
        final content = await entity.readAsString();
        final lang = _getLanguageHighlight(extension);

        buffer.writeln('### `$relativePath`\n');
        buffer.writeln('```$lang');
        buffer.writeln(content);
        buffer.writeln('```\n');
      } catch (e) {
        // Bỏ qua nếu file mã hóa binary không đọc được thành UTF-8
      }
    }
  }
}

bool _isExcludedFile(String fileName) {
  return excludedFileSuffixes.any((suffix) => fileName.endsWith(suffix));
}

bool _shouldSkipPath(String path) {
  final segments = path.split('/');
  if (segments.any((seg) => excludedDirectories.contains(seg))) return true;
  final fileName = segments.last;
  return _isExcludedFile(fileName);
}

String _getExtension(String path) {
  final index = path.lastIndexOf('.');
  return index != -1 ? path.substring(index).toLowerCase() : '';
}

String _getLanguageHighlight(String extension) {
  switch (extension) {
    case '.dart':
      return 'dart';
    case '.yaml':
    case '.yml':
      return 'yaml';
    case '.json':
      return 'json';
    case '.md':
      return 'markdown';
    default:
      return '';
  }
}