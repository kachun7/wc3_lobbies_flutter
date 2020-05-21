import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:wc3_lobbies_flutter/store/home_state.dart';
import 'package:wc3_lobbies_flutter/store/home_store.dart';
import 'package:wc3_lobbies_flutter/widget/lobby_list_tile.dart';

class HomePage extends StatefulWidget {
  final HomeStore homeStore;

  const HomePage({@required this.homeStore, Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  static const Duration animationDuration = Duration(milliseconds: 300);
  static const Duration refreshAnimationDuration = Duration(milliseconds: 500);

  final TextEditingController _nameTextEditController = TextEditingController();
  final TextEditingController _mapTextEditController = TextEditingController();
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _mapFocusNode = FocusNode();

  AnimationController _refreshButtonAnimationController;
  AnimationController _filterButtonAnimationController;

  @override
  void initState() {
    _refreshButtonAnimationController = AnimationController(duration: _HomePageState.refreshAnimationDuration, vsync: this);
    _filterButtonAnimationController = AnimationController(duration: _HomePageState.animationDuration, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _refreshButtonAnimationController.dispose();
    _filterButtonAnimationController.dispose();
    _nameFocusNode.dispose();
    _mapFocusNode.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    widget.homeStore.refresh();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Active Lobbies'),
        actions: [_refreshButton(), _filterButton()],
      ),
      body: _getBody(),
    );
  }

  Widget _refreshButton() {
    return Observer(
      builder: (_) {
        widget.homeStore.isSearching ? _refreshButtonAnimationController.repeat() : _refreshButtonAnimationController.reset();
        return RotationTransition(
          turns: Tween(begin: 0.0, end: 1.0).animate(_refreshButtonAnimationController),
          child: IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Refresh Lobbies',
            onPressed: widget.homeStore.refresh,
          ),
        );
      },
    );
  }

  Widget _filterButton() {
    return Observer(builder: (_) {
      widget.homeStore.isFilterExpanded ? _filterButtonAnimationController.forward() : _filterButtonAnimationController.reverse();

      _nameFocusNode.unfocus();
      _mapFocusNode.unfocus();

      return AnimatedSwitcher(
        duration: _HomePageState.animationDuration,
        transitionBuilder: (child, animaion) {
          return RotationTransition(
            turns: Tween(begin: 0.0, end: 1.0).animate(_filterButtonAnimationController),
            child: child,
          );
        },
        child: IconButton(
          icon: widget.homeStore.isFilterExpanded ? const Icon(Icons.close) : const Icon(Icons.search),
          onPressed: widget.homeStore.toggleExpandFilter,
        ),
      );
    });
  }

  Widget _getBody() {
    return Observer(
      builder: (_) => Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned.fill(
            child: SafeArea(
              child: RefreshIndicator(
                onRefresh: widget.homeStore.refresh,
                child: ListView.separated(
                  itemBuilder: (context, index) => LobbyListTile(lobby: widget.homeStore.list[index]),
                  separatorBuilder: (_, index) => Divider(height: 4, color: Theme.of(context).accentColor),
                  itemCount: widget.homeStore.list.length,
                ),
              ),
            ),
          ),
          if (widget.homeStore.isFilterExpanded) ...[
            Positioned.fill(
              child: InkWell(
                onTap: () => widget.homeStore.isFilterExpanded = false,
                child: Container(color: Colors.black.withAlpha(150)),
              ),
            ),
          ],
          AnimatedPositioned(
            left: 0,
            right: 0,
            curve: Curves.easeInOut,
            duration: _HomePageState.animationDuration,
            top: widget.homeStore.isFilterExpanded ? 0 : -200,
            child: _searchPanel(),
          ),
        ],
      ),
    );
  }

  Widget _searchPanel() {
    return Container(
      color: Colors.grey[200].withAlpha(240),
      child: Column(
        children: <Widget>[
          TextField(
            focusNode: _nameFocusNode,
            controller: _nameTextEditController,
            decoration: const InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16), labelText: 'Filter Name'),
            onChanged: (text) => widget.homeStore.filter(FilterState.name(filter: text)),
            onSubmitted: (text) => widget.homeStore.isFilterExpanded = false,
          ),
          TextField(
            focusNode: _mapFocusNode,
            controller: _mapTextEditController,
            decoration: const InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16), labelText: 'Filter Map'),
            onChanged: (text) => widget.homeStore.filter(FilterState.map(filter: text)),
            onSubmitted: (text) => widget.homeStore.isFilterExpanded = false,
          ),
        ],
      ),
    );
  }
}
