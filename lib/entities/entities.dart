import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:wc3_lobbies_flutter/core/image_util.dart';

part 'entities.freezed.dart';
part 'entities.g.dart';

@freezed
abstract class GameListResult with _$GameListResult {
  factory GameListResult({bool error, String message, List<Lobby> results}) = _GameListResult;
  factory GameListResult.fromJson(Map<String, dynamic> json) => _$GameListResultFromJson(json);
}

@freezed
abstract class Lobby with _$Lobby {
  @JsonSerializable(explicitToJson: true)
  factory Lobby({
    String name,
    String region,
    String host,
    String path,
    int map,
    @JsonKey(name: 'slots_taken') int slotsTaken,
    @JsonKey(name: 'slots_total') int slotsTotal,
    @JsonKey(name: 'creation_time') int creationTime,
    String avatarId,
  }) = _Result;
  factory Lobby.fromJson(Map<String, dynamic> json) => _$LobbyFromJson(json);
}

extension LobbyExtension on Lobby {
  String get countryFlagAssetsUrl {
    switch (region.toLowerCase()) {
      case 'eu':
        return 'assets/images/eu_flag.png';
      case 'kr':
        return 'assets/images/kr_flag.png';
      default:
        return 'assets/images/us_flag.png';
    }
  }

  String get mapUrl => map == 0 ? null : 'https://wc3maps.com/maps/$map/archive/war3mapMap.jpg';

  String get avatarImageUrl => ImageUtil.getAvatarImageUrl(avatarId);

  String get formattedCreationTime {
    final dateTime = DateTime.fromMillisecondsSinceEpoch(creationTime * 1000);
    return DateFormat.yMEd().add_jms().format(dateTime);
  }
}
