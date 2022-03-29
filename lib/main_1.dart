import 'package:flutter/material.dart';
import 'package:super_editor/super_editor.dart';

void main() {
  runApp(const MyApp());
}

/// Issue:
///   When app fist starts and I tap to start typing, keyboard shows
///   but the cursor is always at the start of the text, so it types
///   backwards and backspace doesn’t work as it’s at the start of the text
///
/// Expected behavior:
///    While typing, cursor should always be at the end of the text
///
/// Platforms:
///   iOS
///
/// Steps to reproduce:
///   - Start iOS Simulator
///   - Run project
///   - Tap black rectangle
///   - Start typing
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            color: Colors.black,
            child: const SuperTextField(lineHeight: 16),
          ),
        ),
      ),
    );
  }
}
