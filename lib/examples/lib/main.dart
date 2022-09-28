import 'package:blinc_ui_flutter/examples/lib/pages/borders_example.dart';
import 'package:blinc_ui_flutter/examples/lib/pages/select_screen.dart';
import 'package:blinc_ui_flutter/examples/lib/pages/shadows_example.dart';
import 'package:blinc_ui_flutter/examples/lib/pages/spacing_example.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(initialRoute: '/', routes: {
      '/': (context) => const SelectScreen(),
      '/spacing': (context) => const SpacingExample(),
      '/borders': (context) => const BordersExample(),
      '/shadows': (context) => const ShadowsExample(),
    }),
  );
}
