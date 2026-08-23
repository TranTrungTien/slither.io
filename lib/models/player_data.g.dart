// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayerDataImpl _$$PlayerDataImplFromJson(Map<String, dynamic> json) =>
    _$PlayerDataImpl(
      balance: (json['balance'] as num).toInt(),
      skins: (json['skins'] as List<dynamic>).map((e) => e as String).toList(),
      skin: json['skin'] as String,
    );

Map<String, dynamic> _$$PlayerDataImplToJson(_$PlayerDataImpl instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'skins': instance.skins,
      'skin': instance.skin,
    };
