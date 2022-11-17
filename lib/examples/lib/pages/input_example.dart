import 'package:blinc_ui_flutter/blinc_ui_flutter.dart';
import 'package:flutter/material.dart';

class InputExample extends StatelessWidget {
  InputExample({Key? key}) : super(key: key);

  final _globalKey = GlobalKey<FormState>();
  final ModelTest sla = ModelTest(name: 'name 1', id: 1);
  final _listModel = [
    ModelTest(name: 'name 1', id: 1),
    ModelTest(name: 'name 2', id: 2),
    ModelTest(name: 'name 3', id: 3),
  ];

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
              /*const SizedBox(height: 20),
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
              */
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
                validator: (value) {
                  return 'dfa';
                },
                errorMessage: 'error deu bommm',
              ),
              const SizedBox(height: 20),
              BlincInputComponent.dropdown(
                label: 'Label',
                descriptionText: 'Description area',
                dropdownOptions: _listModel.map((e) => e.name).toList(),
                placeholder: 'Placeholder',
                prefixIcon: Icons.phone_outlined,
                validator: BlincInputComponent.validations.required,
                errorMessage: 'sddad',
                onChanged: (String? value, int? index) {
                  if (index == null) return;
                  _listModel[index].id;
                },
              ),
              BlincInputComponent.dropdown(
                onChanged: (value, index) {},
                dropdownOptions: ['ss'],
                customOptionBuilder: (index) {
                  return Row(
                    children: [
                      Text(['aihfbfgba'][index])
                    ],
                  );
                },
                label: 'Label',
                placeholder: 'Placeholder',
              ),
              BlincInputComponent.dropdown(
                hasBlankOption: true,
                onChanged: (value, index) {},
                customOptionBuilder: (index) {
                  return Row(
                    children: [
                      Text(['aihfbfgba'][index])
                    ],
                  );
                },
                dropdownOptions: ['afijafi'],
                label: 'Placeholder',
              ),
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

class ModelTest {
  final String name;
  final int id;

  ModelTest({
    required this.name,
    required this.id,
  });
}
