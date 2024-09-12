// import 'package:alarm/alarm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:wakevoice/my_app.dart';

Future<void> main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();

  // await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // await Alarm.init();

  runApp(
    const ProviderScope(
      child: WakeVoiceApp(),
    ),
  );
}
