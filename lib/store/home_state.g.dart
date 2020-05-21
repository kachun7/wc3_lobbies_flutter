// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class FilterState extends Equatable {
  const FilterState(this._type);

  factory FilterState.all() = All;

  factory FilterState.name({@required String filter}) = Name;

  factory FilterState.map({@required String filter}) = Map;

  final _FilterState _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(All) all,
      @required R Function(Name) name,
      @required R Function(Map) map}) {
    assert(() {
      if (all == null || name == null || map == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _FilterState.All:
        return all(this as All);
      case _FilterState.Name:
        return name(this as Name);
      case _FilterState.Map:
        return map(this as Map);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required FutureOr<R> Function(All) all,
      @required FutureOr<R> Function(Name) name,
      @required FutureOr<R> Function(Map) map}) {
    assert(() {
      if (all == null || name == null || map == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _FilterState.All:
        return all(this as All);
      case _FilterState.Name:
        return name(this as Name);
      case _FilterState.Map:
        return map(this as Map);
    }
  }

  R whenOrElse<R>(
      {R Function(All) all,
      R Function(Name) name,
      R Function(Map) map,
      @required R Function(FilterState) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _FilterState.All:
        if (all == null) break;
        return all(this as All);
      case _FilterState.Name:
        if (name == null) break;
        return name(this as Name);
      case _FilterState.Map:
        if (map == null) break;
        return map(this as Map);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(All) all,
      FutureOr<R> Function(Name) name,
      FutureOr<R> Function(Map) map,
      @required FutureOr<R> Function(FilterState) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _FilterState.All:
        if (all == null) break;
        return all(this as All);
      case _FilterState.Name:
        if (name == null) break;
        return name(this as Name);
      case _FilterState.Map:
        if (map == null) break;
        return map(this as Map);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(All) all,
      FutureOr<void> Function(Name) name,
      FutureOr<void> Function(Map) map}) {
    assert(() {
      if (all == null && name == null && map == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _FilterState.All:
        if (all == null) break;
        return all(this as All);
      case _FilterState.Name:
        if (name == null) break;
        return name(this as Name);
      case _FilterState.Map:
        if (map == null) break;
        return map(this as Map);
    }
  }

  @override
  List get props => const [];
}

@immutable
class All extends FilterState {
  const All._() : super(_FilterState.All);

  factory All() {
    _instance ??= const All._();
    return _instance;
  }

  static All _instance;
}

@immutable
class Name extends FilterState {
  const Name({@required this.filter}) : super(_FilterState.Name);

  final String filter;

  @override
  String toString() => 'Name(filter:${this.filter})';
  @override
  List get props => [filter];
}

@immutable
class Map extends FilterState {
  const Map({@required this.filter}) : super(_FilterState.Map);

  final String filter;

  @override
  String toString() => 'Map(filter:${this.filter})';
  @override
  List get props => [filter];
}
