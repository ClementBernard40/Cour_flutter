import 'package:flutter/material.dart';
import 'screen/Device.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:  ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.teal
      ),


      home: Scaffold(
        body: Center(
          child: DeviceScreen(),
        ),
      ),
    );
  }
}
