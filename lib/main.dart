import 'package:crypto_final/Presentations/state_holders/ui/screens/main_bottom_nav_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainBottomNavScreen(),
    );
  }
}
