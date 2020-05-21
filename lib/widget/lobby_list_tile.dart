import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';

import 'package:wc3_lobbies_flutter/core/image_util.dart';
import 'package:wc3_lobbies_flutter/entities/entities.dart';

class LobbyListTile extends StatelessWidget {
  final Lobby lobby;

  const LobbyListTile({@required this.lobby, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AspectRatio(aspectRatio: 1, child: _getMapImage(lobby.mapUrl)),
      subtitle: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _getFlagImage(lobby.countryFlagAssetsUrl),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  '(${lobby.slotsTaken}/${lobby.slotsTotal}) ${lobby.name}',
                  maxLines: 2,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(lobby.path),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _getAvatarImage(lobby.avatarImageUrl),
              const SizedBox(width: 4),
              Expanded(child: Text(lobby.host)),
            ],
          ),
          const SizedBox(height: 4),
          Text(lobby.formattedCreationTime),
        ],
      ),
    );
  }

  Widget _getFlagImage(String url) => Image.asset(url, height: 20, fit: BoxFit.cover);

  Widget _getMapImage(String url) {
    if (url == null) return _getPlaceholderImage();

    return Image(
      image: AdvancedNetworkImage(url, header: ImageUtil.statsHeaders, useDiskCache: true),
      fit: BoxFit.cover,
      errorBuilder: (c, o, _) => _getPlaceholderImage(),
    );
  }

  Widget _getPlaceholderImage() => Image.asset(ImageUtil.placeHolderUrl, fit: BoxFit.cover);

  Widget _getAvatarImage(String avatarUrl) {
    return Image(
      image: AdvancedNetworkImage(avatarUrl, header: ImageUtil.statsHeaders, useDiskCache: true),
      height: 20,
      fit: BoxFit.cover,
    );
  }
}
