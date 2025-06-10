import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@lazySingleton
class AppLogger {
  final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      printEmojis: true,
      colors: true,
    ),
  );

  void info(msg) => _logger.i(msg);
  void debug(msg) => _logger.d(msg);
  void warning(msg) => _logger.w(msg);
  void error(msg) => _logger.e(msg);
}
