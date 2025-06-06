import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@lazySingleton
class AppLogger {
  final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      printTime: false,
      printEmojis: false,
      colors: true,
    ),
  );

  void info(String msg) => _logger.i(msg);
  void warning(String msg) => _logger.w(msg);
  void error(String msg) => _logger.e(msg);
}
