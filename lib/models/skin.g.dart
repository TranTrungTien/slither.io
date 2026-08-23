// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SnakeSkinImpl _$$SnakeSkinImplFromJson(Map<String, dynamic> json) =>
    _$SnakeSkinImpl(
      id: json['id'] as String,
      primary: _$JsonConverterFromJson<int, Color>(
          json['primary'], const ColorConverter().fromJson),
      secondary: _$JsonConverterFromJson<int, Color>(
          json['secondary'], const ColorConverter().fromJson),
      tint: (json['tint'] as List<dynamic>)
          .map((e) => const ColorConverter().fromJson((e as num).toInt()))
          .toList(),
      boostTint: (json['boostTint'] as List<dynamic>?)
          ?.map((e) => const ColorConverter().fromJson((e as num).toInt()))
          .toList(),
      texture:
          (json['texture'] as List<dynamic>).map((e) => e as String).toList(),
      size: const Vector2Converter()
          .fromJson(json['size'] as Map<String, dynamic>),
      price: (json['price'] as num).toInt(),
    );

Map<String, dynamic> _$$SnakeSkinImplToJson(_$SnakeSkinImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'primary': _$JsonConverterToJson<int, Color>(
          instance.primary, const ColorConverter().toJson),
      'secondary': _$JsonConverterToJson<int, Color>(
          instance.secondary, const ColorConverter().toJson),
      'tint': instance.tint.map(const ColorConverter().toJson).toList(),
      'boostTint':
          instance.boostTint?.map(const ColorConverter().toJson).toList(),
      'texture': instance.texture,
      'size': const Vector2Converter().toJson(instance.size),
      'price': instance.price,
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
