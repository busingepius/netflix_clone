import 'package:flutter/material.dart';

import './screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix UI',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        // colorScheme: ColorScheme.fromSeed(
        //   seedColor: Colors.white,
        //   background: Colors.white,
        //   error: Colors.red,
        //   onTertiary: Colors.orange,
        // ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      home: const NavScreen(),
    );
  }
}
