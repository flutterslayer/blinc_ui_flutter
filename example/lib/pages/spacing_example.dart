import 'package:blinc_ui_flutter/blinc_ui_flutter.dart';
import 'package:flutter/material.dart';

class SpacingExample extends StatelessWidget {
  const SpacingExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppResponsiveWidget(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Text('Spacing component example'),
        ),
        body: SafeArea(
          child: SizedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                block(context),
                BlincSpacer.horizontal.xxs,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BlincSpacer.vertical.xxxs,
                    block2(),
                    BlincSpacer.vertical.xs,
                    block2(),
                    BlincSpacer.vertical.sm,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        block3(),
                        BlincSpacer.horizontal.xxs,
                        Column(
                          children: [
                            BlincSpacer.vertical.sm,
                            block4(),
                          ],
                        ),
                      ],
                    ),
                    BlincSpacer.vertical.xs,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        block5(),
                        BlincSpacer.horizontal.xxs,
                        block6(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget block(context) {
  return Container(
    width: 50,
    height: MediaQuery.of(context).size.height,
    color: const Color.fromARGB(255, 13, 39, 61),
  );
}

Widget block2() {
  return Container(
    width: 280,
    height: 90,
    color: const Color.fromARGB(255, 13, 39, 61),
  );
}

Widget block3() {
  return Container(
    width: 80,
    height: 250,
    color: const Color.fromARGB(255, 124, 158, 178),
  );
}

Widget block4() {
  return Container(
    width: 180,
    height: 218,
    color: const Color.fromARGB(255, 193, 110, 112),
  );
}

Widget block5() {
  return Container(
    width: 180,
    height: 50,
    color: const Color.fromARGB(255, 251, 177, 60),
  );
}

Widget block6() {
  return Container(
    width: 80,
    height: 50,
    color: const Color.fromARGB(255, 251, 177, 60),
  );
}
