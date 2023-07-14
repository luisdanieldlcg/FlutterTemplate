import 'package:flutter/material.dart';
import 'package:flutter_firebase_template/common/logger.dart';
import 'package:flutter_firebase_template/config.dart';
import 'package:flutter_firebase_template/main.dart';
import 'package:logger/logger.dart';

final Logger logger = AppLogger.getLogger('init');

Future<void> run(RunMode mode) async {
  final config = AppConfig(mode);
  logger.i('Running app in ${config.env.name.toLowerCase()} mode');
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}
