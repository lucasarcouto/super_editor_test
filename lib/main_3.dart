import 'package:flutter/material.dart';
import 'package:super_editor/super_editor.dart';

void main() {
  runApp(const MyApp());
}

/// Issue:
///   Backspace (both physical keyboard and emulator) are not working
///
/// Expected behavior:
///   After typing something, user should be able to delete text
///
/// Platform:
///   Android
///
/// Steps to reproduce:
///   - Start Android Emulator
///   - Run project
///   - Tap black rectangle
///   - Type anything
///   - Try to delete using either physical or emulator's backspace
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            color: Colors.black,
            child: const SuperTextField(
              lineHeight: 16,
            ),
          ),
        ),
      ),
    );
  }
}
