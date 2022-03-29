import 'package:flutter/material.dart';
import 'package:super_editor/super_editor.dart';

void main() {
  runApp(const MyApp());
}

/// Issue:
///   Backspace (both physical keyboard and emulator) are not working
///
/// Platform:
///   Android
///
/// Steps to reproduce:
///   - Start Android Emulator
///   - Run project
///   - Tap green rectangle
///   - Type anything
///   - Try to delete using either physical or emulator's backspace
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
              minLines: 2,
              maxLines: 5,
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
