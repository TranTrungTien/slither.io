// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snake.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SnakeEntityImpl _$$SnakeEntityImplFromJson(Map<String, dynamic> json) =>
    _$SnakeEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      head: const Vector2Converter()
          .fromJson(json['head'] as Map<String, dynamic>),
      angle: (json['angle'] as num).toDouble(),
      desiredAngle: (json['desiredAngle'] as num).toDouble(),
      score: (json['score'] as num).toInt(),
      boost: json['boost'] as bool,
      tracers: (json['tracers'] as List<dynamic>)
          .map((e) =>
              const Vector2Converter().fromJson(e as Map<String, dynamic>))
          .toList(),
      skin: json['skin'] as String,
      dead: json['dead'] as bool,
      eliminations: (json['eliminations'] as num).toInt(),
      boostTimer: (json['boostTimer'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$SnakeEntityImplToJson(_$SnakeEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'head': const Vector2Converter().toJson(instance.head),
      'angle': instance.angle,
      'desiredAngle': instance.desiredAngle,
      'score': instance.score,
      'boost': instance.boost,
      'tracers': instance.tracers.map(const Vector2Converter().toJson).toList(),
      'skin': instance.skin,
      'dead': instance.dead,
      'eliminations': instance.eliminations,
      'boostTimer': instance.boostTimer,
    };
