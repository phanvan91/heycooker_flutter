import 'package:flutter/material.dart';
import 'app/my_app.dart';
import 'di/di_module.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await getItInitial();
  runApp(const MyApp());
}

