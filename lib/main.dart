import 'package:flutter/material.dart';

import 'todo.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

const Color kLightGreen = Color(0xFFE8FFD7);
const Color kDarkGreen = Color(0xFF5E936C);

void main() async {
  //hive used for local storage
  await Hive.initFlutter();
  WidgetsFlutterBinding.ensureInitialized();
  var box = await Hive.openBox('mybox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kLightGreen,
        primaryColor: kDarkGreen,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkGreen, // default button color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30), // pill-shaped
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            foregroundColor: Colors.white, // text color
          ),
        ),
      ),
      home: Todo(),
    );
  }
}
