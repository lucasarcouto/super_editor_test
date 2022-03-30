import 'package:flutter/material.dart';
import 'package:super_editor/super_editor.dart';

void main() {
  runApp(const MyApp());
}

/// Issue:
///   Looks like cursor is outside of the field when there’s more
///   than minLines/maxLines and you’re moving it
///
/// Expected behavior:
///   When user drags cursor around, it should stay within the boundaries
///   of the widget's maxLines. If maxLines is not provided, if the widget
///   resizes itself when user types a text longer than it's starting size,
///   this wouldn't be an issue
///
/// Platform:
///   Android
///
/// Steps to reproduce:
///   - Start Android Emulator
///   - Run project
///   - Tap black rectangle
///   - Type at least maxLines paragraphs
///     (more paragraphs gives more visible results)
///   - Drag the cursor around and see that it goes beyond the wigdets boundaries
///     (even outside of maxLines)
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
