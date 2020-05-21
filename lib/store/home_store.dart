import 'package:mobx/mobx.dart';
import 'package:super_enum/super_enum.dart';
import 'package:wc3_lobbies_flutter/api/api_service.dart';
import 'package:wc3_lobbies_flutter/entities/entities.dart';
import 'package:wc3_lobbies_flutter/store/home_state.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  final APIService apiService;

  String _nameFilterEvent;
  String _mapFilterEvent;

  _HomeStore(this.apiService);

  @observable
  ObservableList<Lobby> list = ObservableList<Lobby>.of([]);

  @observable
  ObservableList<Lobby> originalList = ObservableList<Lobby>.of([]);

  @observable
  bool isSearching = false;

  @observable
  bool isFilterExpanded = false;

  @action
  Future<void> refresh() async {
    isSearching = true;
    final GameListResult resource = await apiService.getGamelist();
    originalList.clear();
    final filteredResults = resource.results.where((lobby) => lobby.region.isNotEmpty).toList();
    originalList.addAll(filteredResults);
    _updateList();
    isSearching = false;
  }

  @action
  void filter(FilterState filter) {
    filter.when(
      all: (_) => null,
      name: (data) {
        _nameFilterEvent = data.filter.isNotEmpty ? data.filter : null;
        _updateList();
      },
      map: (data) {
        _mapFilterEvent = data.filter.isNotEmpty ? data.filter : null;
        _updateList();
      },
    );
  }

  void _updateList() {
    List<Lobby> filteredResults = originalList;

    if (_nameFilterEvent != null) {
      filteredResults = filteredResults.where((lobby) => lobby.name.toLowerCase().contains(_nameFilterEvent.toLowerCase())).toList();
    }

    if (_mapFilterEvent != null) {
      filteredResults = filteredResults.where((lobby) => lobby.path.toLowerCase().contains(_mapFilterEvent.toLowerCase())).toList();
    }

    list.clear();
    list.addAll(filteredResults);
  }

  @action
  void toggleExpandFilter() => isFilterExpanded = !isFilterExpanded;

  @action
  void hideExpandFilter() => isFilterExpanded = false;
}
