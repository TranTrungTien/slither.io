// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CandyEntityImpl _$$CandyEntityImplFromJson(Map<String, dynamic> json) =>
    _$CandyEntityImpl(
      id: json['id'] as String,
      size: (json['size'] as num).toInt(),
      position: const Vector2Converter()
          .fromJson(json['position'] as Map<String, dynamic>),
      color: const ColorConverter().fromJson((json['color'] as num).toInt()),
      type: $enumDecode(_$CandyTypeEnumMap, json['type']),
      eatenAt: _$JsonConverterFromJson<Map<String, dynamic>, Vector2>(
          json['eatenAt'], const Vector2Converter().fromJson),
    );

Map<String, dynamic> _$$CandyEntityImplToJson(_$CandyEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'size': instance.size,
      'position': const Vector2Converter().toJson(instance.position),
      'color': const ColorConverter().toJson(instance.color),
      'type': _$CandyTypeEnumMap[instance.type]!,
      'eatenAt': _$JsonConverterToJson<Map<String, dynamic>, Vector2>(
          instance.eatenAt, const Vector2Converter().toJson),
    };

const _$CandyTypeEnumMap = {
  CandyType.defaultType: 'defaultType',
  CandyType.loot: 'loot',
  CandyType.dropping: 'dropping',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
