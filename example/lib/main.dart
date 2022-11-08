
import 'package:examples/pages/borders_example.dart';
import 'package:examples/pages/brand_example.dart';
import 'package:examples/pages/button_example.dart';
import 'package:examples/pages/input_example.dart';
import 'package:examples/pages/progress_bar_example.dart';
import 'package:examples/pages/select_screen.dart';
import 'package:examples/pages/shadows_example.dart';
import 'package:examples/pages/spacing_example.dart';
import 'package:examples/pages/text_example.dart';
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
