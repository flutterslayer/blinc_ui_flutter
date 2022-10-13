import 'package:flutter/material.dart';
import 'package:blinc_ui_flutter/src/blinc_corner_radius.dart';

class CornerRadiusExample extends StatelessWidget {
  const CornerRadiusExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Corner Radius Component Example'),
      ),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('BlincCornerRadius.sharp'),
                  const SizedBox(height: 15),
                  block(BlincCornerRadius.sharp),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('BlincCornerRadius.sm'),
                  const SizedBox(height: 15),
                  block(BlincCornerRadius.sm),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('BlincCornerRadius.md'),
                  const SizedBox(height: 15),
                  block(BlincCornerRadius.md),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('BlincCornerRadius.lg'),
                  const SizedBox(height: 15),
                  block(BlincCornerRadius.lg),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('BlincCornerRadius.circle'),
                  const SizedBox(height: 15),
                  block(BlincCornerRadius.circle),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget block(BorderRadiusGeometry blincCornerRadius) {
  return Container(
    width: 60,
    height: 60,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 214, 214, 212),
      borderRadius: blincCornerRadius,
    ),
  );
}
