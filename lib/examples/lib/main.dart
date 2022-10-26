import 'package:blinc_ui_flutter/examples/lib/pages/borders_example.dart';
import 'package:blinc_ui_flutter/examples/lib/pages/brand_example.dart';
import 'package:blinc_ui_flutter/examples/lib/pages/button_example.dart';
import 'package:blinc_ui_flutter/examples/lib/pages/progress_bar_example.dart';
import 'package:blinc_ui_flutter/examples/lib/pages/input_example.dart';
import 'package:blinc_ui_flutter/examples/lib/pages/select_screen.dart';
import 'package:blinc_ui_flutter/examples/lib/pages/shadows_example.dart';
import 'package:blinc_ui_flutter/examples/lib/pages/spacing_example.dart';
import 'package:blinc_ui_flutter/examples/lib/pages/text_example.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const SelectScreen(),
        '/spacing': (context) => const SpacingExample(),
        '/borders': (context) => const BordersExample(),
        '/buttons': (context) => const ButtonExample(),
        '/shadows': (context) => const ShadowsExample(),
        '/inputs': (context) => InputExample(),
        '/brand': (context) => const BrandExample(),
        '/progress_bar': (context) => const ProgressBarExample(),
        '/text': (context) => const TextExample(),
      },
    ),
  );
}
