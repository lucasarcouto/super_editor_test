import 'package:flutter/material.dart';
import 'package:super_editor/super_editor.dart';

void main() {
  runApp(const MyApp());
}

/// Issue:
///   Setting minLines to a value lower than maxLines doesn't
///   make the widget resize itself
///
/// Platform:
///   iOS, Android
///
/// Steps to reproduce:
///   - Start iOS Simulator or Android Emulator
///   - Run project
///   - Tap green rectangle
///   - Type at least 3 paragraphs
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
