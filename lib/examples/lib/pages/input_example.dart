import 'package:blinc_ui_flutter/blinc_ui_flutter.dart';
import 'package:flutter/material.dart';

class InputExample extends StatelessWidget {
  InputExample({Key? key}) : super(key: key);

  final _globalKey = GlobalKey<FormState>();

  void _validateForm() {
    _globalKey.currentState?.validate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Button component example'),
      ),
      body: SafeArea(
        child: BlincInputComponent.form(
          globalKey: _globalKey,
          child: ListView(
            padding: const EdgeInsets.all(8.0),
            children: [
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                prefixIcon: Icons.phone,
                suffixIcon: Icons.remove_red_eye,
                descriptionText: 'Description area',
                validator: BlincInputComponent.validations.required,
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                prefixIcon: Icons.phone,
                suffixIcon: Icons.remove_red_eye,
                descriptionText: 'Description area',
                enabled: false,
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                prefixIcon: Icons.phone,
                suffixIcon: Icons.remove_red_eye,
                descriptionText: 'Description area',
                enabled: false,
                textEditingController: TextEditingController(text: 'input'),
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
              ),
              const SizedBox(height: 50),
              BlincButton(
                text: 'Send',
                onPressed: _validateForm,
              ).largePrimary(),
            ],
          ),
        ),
      ),
    );
  }
}
