import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:heycooker_flutter/utils/log/log.dart';
import 'app/my_app.dart';
import 'di/di_module.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await getItInitial();

  log.info("---------START--------------");
  final debugPaint =
      dotenv.env['DEBUG_PAINT_SIZE_ENABLED']?.toLowerCase() == 'true';
  if (debugPaint) {
    debugPaintSizeEnabled = true; // Bật debug layout nếu giá trị là true
  }

  runApp(MyApp());
}
