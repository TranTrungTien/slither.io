// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlertEntityImpl _$$AlertEntityImplFromJson(Map<String, dynamic> json) =>
    _$AlertEntityImpl(
      id: (json['id'] as num).toInt(),
      emoji: json['emoji'] as String,
      message: json['message'] as String,
      color: const ColorConverter().fromJson((json['color'] as num).toInt()),
      duration: (json['duration'] as num).toDouble(),
      visible: json['visible'] as bool,
      scope: $enumDecodeNullable(_$AlertScopeEnumMap, json['scope']),
    );

Map<String, dynamic> _$$AlertEntityImplToJson(_$AlertEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'emoji': instance.emoji,
      'message': instance.message,
      'color': const ColorConverter().toJson(instance.color),
      'duration': instance.duration,
      'visible': instance.visible,
      'scope': _$AlertScopeEnumMap[instance.scope],
    };

const _$AlertScopeEnumMap = {
  AlertScope.money: 'money',
  AlertScope.ranking: 'ranking',
};
