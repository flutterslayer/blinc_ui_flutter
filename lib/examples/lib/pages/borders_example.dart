import 'package:flutter/material.dart';
import 'package:blinc_ui_flutter/src/blinc_borders.dart';

class BordersExample extends StatelessWidget {
  const BordersExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Borders Component Example'),
      ),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('BlincBorders.zero'),
                  const SizedBox(height: 15),
                  block(BlincBorders.zero),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('BlincBorders.sm'),
                  const SizedBox(height: 15),
                  block(BlincBorders.sm),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('BlincBorders.md'),
                  const SizedBox(height: 15),
                  block(BlincBorders.md),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('BlincBorders.lg'),
                  const SizedBox(height: 15),
                  block(BlincBorders.lg),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget block(BoxBorder blincBorder) {
  return Container(
    width: 60,
    height: 60,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 242, 242, 239),
      border: blincBorder,
    ),
  );
}
