import 'package:flutter/material.dart';
import 'package:wc3_lobbies_flutter/api/api_service.dart';
import 'package:wc3_lobbies_flutter/core/injectable.dart';
import 'package:wc3_lobbies_flutter/pages/home.dart';
import 'package:wc3_lobbies_flutter/store/home_store.dart';

Future<void> main() async {
  await initInjectables();
  runApp(MyApp());
}

/// Main App
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wc3 Stats',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: HomePage(
        homeStore: HomeStore(
          getIt<APIService>(),
        ),
      ),
    );
  }
}
