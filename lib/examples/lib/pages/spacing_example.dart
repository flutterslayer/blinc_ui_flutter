import 'package:flutter/material.dart';
import 'package:blinc_ui_flutter/src/space_component.dart';

class SpacingExample extends StatelessWidget {
  const SpacingExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              SpaceComponent.hxxs,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SpaceComponent.vxxxs,
                  block2(),
                  SpaceComponent.vxs,
                  block2(),
                  SpaceComponent.vsm,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      block3(),
                      SpaceComponent.hxxs,
                      Column(
                        children: [
                          SpaceComponent.vsm,
                          block4(),
                        ],
                      ),
                    ],
                  ),
                  SpaceComponent.vxs,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      block5(),
                      SpaceComponent.hxxs,
                      block6(),
                    ],
                  ),
                ],
              ),
            ],
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
