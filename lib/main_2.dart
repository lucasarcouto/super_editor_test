import 'package:flutter/material.dart';
import 'package:super_editor/super_editor.dart';

void main() {
  runApp(const MyApp());
}

/// Issue:
///   Setting minLines to a value lower than maxLines doesn't
///   make the widget resize itself
///
/// Expected behavior:
///   While typing, if text is longer than minLines, widget should
///   resize itself until it gets to maxLines
///
/// Platform:
///   iOS, Android
///
/// Steps to reproduce:
///   - Start iOS Simulator or Android Emulator
///   - Run project
///   - Tap black rectangle
///   - Type at least 3 paragraphs
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
            ),
          ),
        ),
      ),
    );
  }
}
