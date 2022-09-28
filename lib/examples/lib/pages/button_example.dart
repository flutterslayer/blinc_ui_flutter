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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const BlincButton(
              text: 'Large Primary',
              icon: Icons.add_a_photo,
            ).largePrimary(),
            const BlincButton(
              text: 'Large Secondary',
            ).largeSecondary(),
            const BlincButton(
              text: 'Large Tertiary',
              icon: Icons.location_on_outlined,
              isIconInverted: true,
            ).largeTertiary(),
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const BlincButton(
                    text: 'Small Primary',
                    icon: Icons.person_pin_circle_outlined,
                  ).smallPrimary(),
                  const BlincButton(
                    text: 'Small Tertiary',
                    icon: Icons.person_pin_circle_outlined,
                    isIconInverted: true,
                  ).smallSecondary(),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const BlincIconButton(
                  icon: Icons.facebook,
                ).iconLargePrimary(),
                const BlincIconButton(
                  icon: Icons.whatsapp,
                ).iconLargeSecondary(),
                const BlincIconButton(
                  icon: Icons.accessibility_new_sharp,
                ).iconLargeTertiary(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const BlincIconButton(
                  icon: Icons.arrow_back_ios_new,
                ).iconSmallPrimary(),
                const BlincIconButton(
                  icon: Icons.subdirectory_arrow_left_sharp,
                ).iconSmallSecondary(),
                const BlincIconButton(
                  icon: Icons.arrow_forward_ios,
                ).iconSmallTertiary(),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
