import 'package:flutter/material.dart';
import 'package:blinc_ui_flutter/src/button_components.dart';
import 'package:blinc_ui_flutter/src/icon_button_components.dart';

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
              text: 'Label',
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
              icon: Icons.person_pin_circle_outlined,
            ).largeSecondary(),
            const BlincIconButton(
              icon: Icons.person_pin_circle_outlined,
            ).iconSmallPrimary(),
            const BlincIconButton(
              icon: Icons.person_pin_circle_outlined,
            ).iconSmallSecondary(),
            const BlincIconButton(
              icon: Icons.person_pin_circle_outlined,
            ).iconLargePrimary(),
          ],
        )),
      ),
    );
  }
}
