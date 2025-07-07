import 'package:flutter/material.dart';
import 'package:iconify/app/screens/main_screen.dart';
import 'package:iconify/app/utils/themes.dart';
import 'package:iconify/icon_plus/bootstrap/icon_plus_bootstrap.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: FlutconsTheme.lightTheme,
      home: const MainScreen(),
    );
  }
}

