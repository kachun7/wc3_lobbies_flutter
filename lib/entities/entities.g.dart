// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameListResult _$_$_GameListResultFromJson(Map<String, dynamic> json) {
  return _$_GameListResult(
    error: json['error'] as bool,
    message: json['message'] as String,
    results: (json['results'] as List)
        ?.map(
            (e) => e == null ? null : Lobby.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_GameListResultToJson(_$_GameListResult instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'results': instance.results,
    };

_$_Result _$_$_ResultFromJson(Map<String, dynamic> json) {
  return _$_Result(
    name: json['name'] as String,
    region: json['region'] as String,
    host: json['host'] as String,
    path: json['path'] as String,
    map: json['map'] as int,
    slotsTaken: json['slots_taken'] as int,
    slotsTotal: json['slots_total'] as int,
    creationTime: json['creation_time'] as int,
    avatarId: json['avatarId'] as String,
  );
}

Map<String, dynamic> _$_$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'host': instance.host,
      'path': instance.path,
      'map': instance.map,
      'slots_taken': instance.slotsTaken,
      'slots_total': instance.slotsTotal,
      'creation_time': instance.creationTime,
      'avatarId': instance.avatarId,
    };
