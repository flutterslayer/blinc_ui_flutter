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
        title: const Text('Input component example'),
      ),
      body: SafeArea(
        child: BlincInputComponent.form(
          globalKey: _globalKey,
          child: ListView(
            padding: const EdgeInsets.all(8.0),
            children: [
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Text',
                  style: TextStyle(fontSize: 17),
                ),
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                descriptionText: 'Description area',
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: 'Description area',
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: 'Description area',
                textEditingController: TextEditingController(text: 'Input'),
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: 'Description area',
                textEditingController: TextEditingController(text: 'Input'),
                enabled: false,
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: 'Description area',
                validator: BlincInputComponent.validations.required,
              ),
              const SizedBox(height: 50),
              const Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Text with Trailing Icon',
                  style: TextStyle(fontSize: 17),
                ),
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                descriptionText: 'Description area',
                suffixIcon: Icons.remove_red_eye_outlined,
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: 'Description area',
                suffixIcon: Icons.remove_red_eye_outlined,
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: 'Description area',
                suffixIcon: Icons.remove_red_eye_outlined,
                textEditingController: TextEditingController(text: 'Input'),
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: 'Description area',
                suffixIcon: Icons.remove_red_eye_outlined,
                textEditingController: TextEditingController(text: 'Input'),
                enabled: false,
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: 'Description area',
                suffixIcon: Icons.remove_red_eye_outlined,
                validator: BlincInputComponent.validations.required,
              ),
              const SizedBox(height: 20),
              const SizedBox(height: 50),
              const Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Text with Leading and Trailing Icon',
                  style: TextStyle(fontSize: 17),
                ),
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                descriptionText: 'Description area',
                suffixIcon: Icons.remove_red_eye_outlined,
                prefixIcon: Icons.phone_outlined,
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: 'Description area',
                suffixIcon: Icons.remove_red_eye_outlined,
                prefixIcon: Icons.phone_outlined,
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: 'Description area',
                suffixIcon: Icons.remove_red_eye_outlined,
                prefixIcon: Icons.phone_outlined,
                textEditingController: TextEditingController(text: 'Input'),
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: 'Description area',
                suffixIcon: Icons.remove_red_eye_outlined,
                prefixIcon: Icons.phone_outlined,
                textEditingController: TextEditingController(text: 'Input'),
                enabled: false,
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: 'Description area',
                suffixIcon: Icons.remove_red_eye_outlined,
                prefixIcon: Icons.phone_outlined,
                validator: BlincInputComponent.validations.required,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _validateForm,
        child: const Icon(Icons.send),
      ),
    );
  }
}
