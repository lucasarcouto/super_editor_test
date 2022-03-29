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
/// Platforms:
///   iOS
///
/// Steps to reproduce:
///   - Start iOS Simulator
///   - Run project
///   - Tap green rectangle
///   - Start typing
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
            color: Colors.green,
            child: SuperTextField(
              lineHeight: 16,
              textAlign: TextAlign.center,
              textStyleBuilder: (attributions) {
                return const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
