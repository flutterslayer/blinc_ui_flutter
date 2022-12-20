import 'package:blinc_ui_flutter/blinc_ui_flutter.dart';
import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppResponsiveWidget(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Text('Button component example'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BlincButton(
                    text: 'Click here to go back to selection',
                    icon: Icons.arrow_back,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ).largePrimary(),
                  BlincButton(
                    text: 'Large Primary',
                    icon: Icons.add_a_photo,
                    onPressed: () {},
                  ).largePrimary(),
                  SizedBox(
                    child: BlincButton(
                      text: 'Large Secondary',
                      onPressed: () {},
                    ).largeSecondary(),
                  ),
                  BlincButton(
                    text: 'Large Tertiary',
                    onPressed: () {},
                    icon: Icons.location_on,
                  ).largeTertiary(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BlincButton(
                          text: 'Small Primary',
                          icon: Icons.person_pin_circle_outlined,
                          onPressed: () {},
                        ).smallPrimary(),
                        BlincButton(
                          text: 'Small Tertiary',
                          icon: Icons.person_pin_circle_outlined,
                          onPressed: () {},
                          isIconInverted: true,
                        ).smallTertiary(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BlincButton(
                          isLoading: true,
                          onPressed: () {},
                        ).smallSecondary(),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BlincIconButton(
                        icon: Icons.facebook,
                        onPressed: () {},
                      ).iconLargePrimary(),
                      BlincIconButton(
                        onPressed: () {},
                        icon: Icons.whatsapp,
                      ).iconLargeSecondary(),
                      BlincIconButton(
                        onPressed: () {},
                        icon: Icons.accessibility_new_sharp,
                      ).iconLargeTertiary(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BlincIconButton(
                        onPressed: () {},
                        icon: Icons.arrow_back_ios_new,
                      ).iconSmallPrimary(),
                      BlincIconButton(
                        onPressed: () {},
                        icon: Icons.subdirectory_arrow_left_sharp,
                      ).iconSmallSecondary(),
                      BlincIconButton(
                        onPressed: () {},
                        icon: Icons.arrow_forward_ios,
                      ).iconSmallTertiary(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 220,
                        height: 150,
                        child: BlincButton(
                          text: 'Fluid Large Primary',
                          isFluid: true,
                          onPressed: () {},
                        ).largePrimary(),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: 110,
                            height: 60,
                            child: BlincButton(
                              text: 'Large Secondary',
                              isFluid: true,
                              onPressed: () {},
                            ).largeSecondary(),
                          ),
                          SizedBox(
                            width: 110,
                            height: 90,
                            child: BlincButton(
                              text: 'Large Tertiary',
                              isFluid: true,
                              onPressed: () {},
                            ).largeTertiary(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BlincButton.doubleButton(
                        textLeft: 'Left',
                        onPressedLeft: () {},
                        textRight: 'Right',
                        onPressedRight: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
