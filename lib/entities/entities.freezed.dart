// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GameListResult _$GameListResultFromJson(Map<String, dynamic> json) {
  return _GameListResult.fromJson(json);
}

class _$GameListResultTearOff {
  const _$GameListResultTearOff();

  _GameListResult call({bool error, String message, List<Lobby> results}) {
    return _GameListResult(
      error: error,
      message: message,
      results: results,
    );
  }
}

// ignore: unused_element
const $GameListResult = _$GameListResultTearOff();

mixin _$GameListResult {
  bool get error;
  String get message;
  List<Lobby> get results;

  Map<String, dynamic> toJson();
  $GameListResultCopyWith<GameListResult> get copyWith;
}

abstract class $GameListResultCopyWith<$Res> {
  factory $GameListResultCopyWith(
          GameListResult value, $Res Function(GameListResult) then) =
      _$GameListResultCopyWithImpl<$Res>;
  $Res call({bool error, String message, List<Lobby> results});
}

class _$GameListResultCopyWithImpl<$Res>
    implements $GameListResultCopyWith<$Res> {
  _$GameListResultCopyWithImpl(this._value, this._then);

  final GameListResult _value;
  // ignore: unused_field
  final $Res Function(GameListResult) _then;

  @override
  $Res call({
    Object error = freezed,
    Object message = freezed,
    Object results = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed ? _value.error : error as bool,
      message: message == freezed ? _value.message : message as String,
      results: results == freezed ? _value.results : results as List<Lobby>,
    ));
  }
}

abstract class _$GameListResultCopyWith<$Res>
    implements $GameListResultCopyWith<$Res> {
  factory _$GameListResultCopyWith(
          _GameListResult value, $Res Function(_GameListResult) then) =
      __$GameListResultCopyWithImpl<$Res>;
  @override
  $Res call({bool error, String message, List<Lobby> results});
}

class __$GameListResultCopyWithImpl<$Res>
    extends _$GameListResultCopyWithImpl<$Res>
    implements _$GameListResultCopyWith<$Res> {
  __$GameListResultCopyWithImpl(
      _GameListResult _value, $Res Function(_GameListResult) _then)
      : super(_value, (v) => _then(v as _GameListResult));

  @override
  _GameListResult get _value => super._value as _GameListResult;

  @override
  $Res call({
    Object error = freezed,
    Object message = freezed,
    Object results = freezed,
  }) {
    return _then(_GameListResult(
      error: error == freezed ? _value.error : error as bool,
      message: message == freezed ? _value.message : message as String,
      results: results == freezed ? _value.results : results as List<Lobby>,
    ));
  }
}

@JsonSerializable()
class _$_GameListResult implements _GameListResult {
  _$_GameListResult({this.error, this.message, this.results});

  factory _$_GameListResult.fromJson(Map<String, dynamic> json) =>
      _$_$_GameListResultFromJson(json);

  @override
  final bool error;
  @override
  final String message;
  @override
  final List<Lobby> results;

  @override
  String toString() {
    return 'GameListResult(error: $error, message: $message, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GameListResult &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(results);

  @override
  _$GameListResultCopyWith<_GameListResult> get copyWith =>
      __$GameListResultCopyWithImpl<_GameListResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GameListResultToJson(this);
  }
}

abstract class _GameListResult implements GameListResult {
  factory _GameListResult({bool error, String message, List<Lobby> results}) =
      _$_GameListResult;

  factory _GameListResult.fromJson(Map<String, dynamic> json) =
      _$_GameListResult.fromJson;

  @override
  bool get error;
  @override
  String get message;
  @override
  List<Lobby> get results;
  @override
  _$GameListResultCopyWith<_GameListResult> get copyWith;
}

Lobby _$LobbyFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

class _$LobbyTearOff {
  const _$LobbyTearOff();

  _Result call(
      {String name,
      String region,
      String host,
      String path,
      int map,
      @JsonKey(name: 'slots_taken') int slotsTaken,
      @JsonKey(name: 'slots_total') int slotsTotal,
      @JsonKey(name: 'creation_time') int creationTime,
      String avatarId}) {
    return _Result(
      name: name,
      region: region,
      host: host,
      path: path,
      map: map,
      slotsTaken: slotsTaken,
      slotsTotal: slotsTotal,
      creationTime: creationTime,
      avatarId: avatarId,
    );
  }
}

// ignore: unused_element
const $Lobby = _$LobbyTearOff();

mixin _$Lobby {
  String get name;
  String get region;
  String get host;
  String get path;
  int get map;
  @JsonKey(name: 'slots_taken')
  int get slotsTaken;
  @JsonKey(name: 'slots_total')
  int get slotsTotal;
  @JsonKey(name: 'creation_time')
  int get creationTime;
  String get avatarId;

  Map<String, dynamic> toJson();
  $LobbyCopyWith<Lobby> get copyWith;
}

abstract class $LobbyCopyWith<$Res> {
  factory $LobbyCopyWith(Lobby value, $Res Function(Lobby) then) =
      _$LobbyCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String region,
      String host,
      String path,
      int map,
      @JsonKey(name: 'slots_taken') int slotsTaken,
      @JsonKey(name: 'slots_total') int slotsTotal,
      @JsonKey(name: 'creation_time') int creationTime,
      String avatarId});
}

class _$LobbyCopyWithImpl<$Res> implements $LobbyCopyWith<$Res> {
  _$LobbyCopyWithImpl(this._value, this._then);

  final Lobby _value;
  // ignore: unused_field
  final $Res Function(Lobby) _then;

  @override
  $Res call({
    Object name = freezed,
    Object region = freezed,
    Object host = freezed,
    Object path = freezed,
    Object map = freezed,
    Object slotsTaken = freezed,
    Object slotsTotal = freezed,
    Object creationTime = freezed,
    Object avatarId = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      region: region == freezed ? _value.region : region as String,
      host: host == freezed ? _value.host : host as String,
      path: path == freezed ? _value.path : path as String,
      map: map == freezed ? _value.map : map as int,
      slotsTaken: slotsTaken == freezed ? _value.slotsTaken : slotsTaken as int,
      slotsTotal: slotsTotal == freezed ? _value.slotsTotal : slotsTotal as int,
      creationTime:
          creationTime == freezed ? _value.creationTime : creationTime as int,
      avatarId: avatarId == freezed ? _value.avatarId : avatarId as String,
    ));
  }
}

abstract class _$ResultCopyWith<$Res> implements $LobbyCopyWith<$Res> {
  factory _$ResultCopyWith(_Result value, $Res Function(_Result) then) =
      __$ResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String region,
      String host,
      String path,
      int map,
      @JsonKey(name: 'slots_taken') int slotsTaken,
      @JsonKey(name: 'slots_total') int slotsTotal,
      @JsonKey(name: 'creation_time') int creationTime,
      String avatarId});
}

class __$ResultCopyWithImpl<$Res> extends _$LobbyCopyWithImpl<$Res>
    implements _$ResultCopyWith<$Res> {
  __$ResultCopyWithImpl(_Result _value, $Res Function(_Result) _then)
      : super(_value, (v) => _then(v as _Result));

  @override
  _Result get _value => super._value as _Result;

  @override
  $Res call({
    Object name = freezed,
    Object region = freezed,
    Object host = freezed,
    Object path = freezed,
    Object map = freezed,
    Object slotsTaken = freezed,
    Object slotsTotal = freezed,
    Object creationTime = freezed,
    Object avatarId = freezed,
  }) {
    return _then(_Result(
      name: name == freezed ? _value.name : name as String,
      region: region == freezed ? _value.region : region as String,
      host: host == freezed ? _value.host : host as String,
      path: path == freezed ? _value.path : path as String,
      map: map == freezed ? _value.map : map as int,
      slotsTaken: slotsTaken == freezed ? _value.slotsTaken : slotsTaken as int,
      slotsTotal: slotsTotal == freezed ? _value.slotsTotal : slotsTotal as int,
      creationTime:
          creationTime == freezed ? _value.creationTime : creationTime as int,
      avatarId: avatarId == freezed ? _value.avatarId : avatarId as String,
    ));
  }
}

@JsonSerializable(explicitToJson: true)
class _$_Result implements _Result {
  _$_Result(
      {this.name,
      this.region,
      this.host,
      this.path,
      this.map,
      @JsonKey(name: 'slots_taken') this.slotsTaken,
      @JsonKey(name: 'slots_total') this.slotsTotal,
      @JsonKey(name: 'creation_time') this.creationTime,
      this.avatarId});

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$_$_ResultFromJson(json);

  @override
  final String name;
  @override
  final String region;
  @override
  final String host;
  @override
  final String path;
  @override
  final int map;
  @override
  @JsonKey(name: 'slots_taken')
  final int slotsTaken;
  @override
  @JsonKey(name: 'slots_total')
  final int slotsTotal;
  @override
  @JsonKey(name: 'creation_time')
  final int creationTime;
  @override
  final String avatarId;

  @override
  String toString() {
    return 'Lobby(name: $name, region: $region, host: $host, path: $path, map: $map, slotsTaken: $slotsTaken, slotsTotal: $slotsTotal, creationTime: $creationTime, avatarId: $avatarId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Result &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)) &&
            (identical(other.host, host) ||
                const DeepCollectionEquality().equals(other.host, host)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.map, map) ||
                const DeepCollectionEquality().equals(other.map, map)) &&
            (identical(other.slotsTaken, slotsTaken) ||
                const DeepCollectionEquality()
                    .equals(other.slotsTaken, slotsTaken)) &&
            (identical(other.slotsTotal, slotsTotal) ||
                const DeepCollectionEquality()
                    .equals(other.slotsTotal, slotsTotal)) &&
            (identical(other.creationTime, creationTime) ||
                const DeepCollectionEquality()
                    .equals(other.creationTime, creationTime)) &&
            (identical(other.avatarId, avatarId) ||
                const DeepCollectionEquality()
                    .equals(other.avatarId, avatarId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(region) ^
      const DeepCollectionEquality().hash(host) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(map) ^
      const DeepCollectionEquality().hash(slotsTaken) ^
      const DeepCollectionEquality().hash(slotsTotal) ^
      const DeepCollectionEquality().hash(creationTime) ^
      const DeepCollectionEquality().hash(avatarId);

  @override
  _$ResultCopyWith<_Result> get copyWith =>
      __$ResultCopyWithImpl<_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ResultToJson(this);
  }
}

abstract class _Result implements Lobby {
  factory _Result(
      {String name,
      String region,
      String host,
      String path,
      int map,
      @JsonKey(name: 'slots_taken') int slotsTaken,
      @JsonKey(name: 'slots_total') int slotsTotal,
      @JsonKey(name: 'creation_time') int creationTime,
      String avatarId}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  String get name;
  @override
  String get region;
  @override
  String get host;
  @override
  String get path;
  @override
  int get map;
  @override
  @JsonKey(name: 'slots_taken')
  int get slotsTaken;
  @override
  @JsonKey(name: 'slots_total')
  int get slotsTotal;
  @override
  @JsonKey(name: 'creation_time')
  int get creationTime;
  @override
  String get avatarId;
  @override
  _$ResultCopyWith<_Result> get copyWith;
}
