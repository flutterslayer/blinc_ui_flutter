import 'package:flutter/material.dart';
import 'package:blinc_ui_flutter/src/blinc_shadows.dart';

class ShadowsExample extends StatelessWidget {
  const ShadowsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Shadows Component example'),
      ),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('BlincShadow.zero'),
                    const SizedBox(height: 15),
                    block(BlincShadow.zero),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('BlincShadow.sm'),
                    const SizedBox(height: 15),
                    block(BlincShadow.sm),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('BlincShadow.md'),
                    const SizedBox(height: 15),
                    block(BlincShadow.md),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('BlincShadow.lg'),
                    const SizedBox(height: 15),
                    block(BlincShadow.lg),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('BlincShadow.xl'),
                    const SizedBox(height: 15),
                    block(BlincShadow.xl),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('BlincShadow.huge'),
                    const SizedBox(height: 15),
                    block(BlincShadow.huge),
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

Widget block(BoxShadow blincShadow) {
  return Container(
    width: 60,
    height: 60,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 227, 227, 225),
      boxShadow: [
        blincShadow,
      ],
    ),
  );
}
