// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStore, Store {
  final _$listAtom = Atom(name: '_HomeStore.list');

  @override
  ObservableList<Lobby> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(ObservableList<Lobby> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  final _$originalListAtom = Atom(name: '_HomeStore.originalList');

  @override
  ObservableList<Lobby> get originalList {
    _$originalListAtom.reportRead();
    return super.originalList;
  }

  @override
  set originalList(ObservableList<Lobby> value) {
    _$originalListAtom.reportWrite(value, super.originalList, () {
      super.originalList = value;
    });
  }

  final _$isSearchingAtom = Atom(name: '_HomeStore.isSearching');

  @override
  bool get isSearching {
    _$isSearchingAtom.reportRead();
    return super.isSearching;
  }

  @override
  set isSearching(bool value) {
    _$isSearchingAtom.reportWrite(value, super.isSearching, () {
      super.isSearching = value;
    });
  }

  final _$isFilterExpandedAtom = Atom(name: '_HomeStore.isFilterExpanded');

  @override
  bool get isFilterExpanded {
    _$isFilterExpandedAtom.reportRead();
    return super.isFilterExpanded;
  }

  @override
  set isFilterExpanded(bool value) {
    _$isFilterExpandedAtom.reportWrite(value, super.isFilterExpanded, () {
      super.isFilterExpanded = value;
    });
  }

  final _$refreshAsyncAction = AsyncAction('_HomeStore.refresh');

  @override
  Future<void> refresh() {
    return _$refreshAsyncAction.run(() => super.refresh());
  }

  final _$_HomeStoreActionController = ActionController(name: '_HomeStore');

  @override
  void filter(dynamic filter) {
    final _$actionInfo =
        _$_HomeStoreActionController.startAction(name: '_HomeStore.filter');
    try {
      return super.filter(filter);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleExpandFilter() {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.toggleExpandFilter');
    try {
      return super.toggleExpandFilter();
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void hideExpandFilter() {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.hideExpandFilter');
    try {
      return super.hideExpandFilter();
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
list: ${list},
originalList: ${originalList},
isSearching: ${isSearching},
isFilterExpanded: ${isFilterExpanded}
    ''';
  }
}
