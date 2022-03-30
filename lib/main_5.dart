import 'package:flutter/material.dart';
import 'package:super_editor/super_editor.dart';

void main() {
  runApp(const MyApp());
}

/// Issue:
///   Can’t center text vertically inside SuperTextEditor
///
/// Expected behavior:
///   Widget should provide a way to center text vertically.
///   If user selects minLines: 2, it should render widget of that size, but
///   text starts at the center
///
/// Platform:
///   iOS, Android & Web
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
              minLines: 2,
              maxLines: 5,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
