import 'package:flutter/material.dart';
import 'package:super_editor/super_editor.dart';

void main() {
  runApp(const MyApp());
}

/// Issue:
///   Looks like cursor is outside of the field when there’s more
///   than minLines/maxLines and you’re moving it
///
/// Platform:
///   Android
///
/// Steps to reproduce:
///   - Start Android Emulator
///   - Run project
///   - Tap green rectangle
///   - Type at least [maxLines] paragraphs
///     (more paragraphs gives more visible results)
///   - Drag the cursor around and see that it goes beyond the wigdets boundaries
///     (even outside of [maxLines])
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
