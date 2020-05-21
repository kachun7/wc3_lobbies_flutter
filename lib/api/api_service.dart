import 'dart:async';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:wc3_lobbies_flutter/entities/entities.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'http://wc3maps.com/api/v1/')
/// API service
abstract class APIService {

  factory APIService(Dio dio, {String baseUrl}) = _APIService;

  @GET('/listgames')
  /// Fetch [GameListResult] from API
  Future<GameListResult> getGamelist();
}
