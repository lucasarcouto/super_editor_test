import 'package:flutter/material.dart';
import 'package:super_editor/super_editor.dart';

void main() {
  runApp(const MyApp());
}

/// Issue:
///   When user types a text longer than the widget's starting size, they won't
///   be able to see what they are typing, because the text goes outside
///   of the widget's boundaries
///
/// Expected behavior:
///   While typing, current cursor position should always be visible so the
///   user can see what's being typed
///
/// Platform:
///   iOS, Android
///
/// Steps to reproduce:
///   - Start Android Emulator
///   - Run project
///   - Tap black rectangle
///   - Type anything
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
