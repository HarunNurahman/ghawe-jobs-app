import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ghawejobapp/pages/home_screen.dart';
import 'package:ghawejobapp/pages/login_screen.dart';
import 'package:ghawejobapp/pages/register_screen.dart';
import 'package:ghawejobapp/pages/splash_screen.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(),
  )
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context), // <--- Add this line
      builder: DevicePreview.appBuilder,
      title: 'Ghawe Job Apps',
      theme: ThemeData.light(),
      home: const HomeScreen(),
    );
  }
}
