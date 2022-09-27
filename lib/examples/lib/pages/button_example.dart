import 'package:flutter/material.dart';
import 'package:blinc_ui_flutter/src/button_components.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Button component example'),
      ),
      body: SafeArea(
        child: SizedBox(
            child: Column(
          children: [
            const BlincButton(
              text: 'SMALL PRIMARY',
            ).smallPrimary(),
            const BlincButton(
              text: 'SMALL SECONDARY',
            ).smallSecondary(),
            const BlincButton(
              text: 'SMALL TERTIARY',
            ).smallTertiary(),
            const BlincButton(
              text: 'LARGE PRIMARY',
            ).largePrimary(),
            const BlincButton(
              text: 'LARGE SECONDARY',
            ).largeSecondary(),
            const BlincButton(
              text: 'LARGE TERTIARY',
            ).largeTertiary(),
          ],
        )),
      ),
    );
  }
}
