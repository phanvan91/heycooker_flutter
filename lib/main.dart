import 'package:flutter/material.dart';
import 'app/my_app.dart';
import 'di/di_module.dart';
import 'package:flutter/rendering.dart';

void main() async {
  debugPaintSizeEnabled = true; // Bật debug layout
  WidgetsFlutterBinding.ensureInitialized();
  await getItInitial();
  runApp(const MyApp());
}

