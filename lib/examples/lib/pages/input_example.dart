import 'package:blinc_ui_flutter/blinc_ui_flutter.dart';
import 'package:flutter/material.dart';

class InputExample extends StatelessWidget {
  const InputExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Button component example'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                prefixIcon: Icons.phone,
                suffixIcon: Icons.remove_red_eye,
                descriptionText: 'Description area',
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
