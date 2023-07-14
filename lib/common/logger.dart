import 'package:flutter_firebase_template/config.dart';
import 'package:logger/logger.dart';

class AppLogger {
  static Logger getLogger(String className) {
    final Level level;
    if (AppConfig.isDebug) {
      level = Level.debug;
    } else {
      level = Level.info;
    }
    return Logger(
      printer: AppLogPrinter(
        className: className,
      ),
      level: level,
    );
  }
}

class AppLogPrinter extends LogPrinter {
  final String className;

  AppLogPrinter({
    required this.className,
  });

  @override
  List<String> log(LogEvent event) {
    final color = PrettyPrinter.levelColors[event.level];
    final emoji = PrettyPrinter.levelEmojis[event.level]!;
    final emojiOutput = emoji.replaceAll(' ', '');
    final message = event.message;
    final time = DateTime.now();
    return [
      color!(
        "[${time.hour}:${time.minute}:${time.second}] [$className/${event.level.name.toUpperCase()}]$emojiOutput: $message",
      ),
    ];
  }
}
