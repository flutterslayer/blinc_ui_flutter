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
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: 'Description area',
                errorMessage: "That's the error message parameter",
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: 'Description area',
                validator: (value) {
                  return "Before returning this message you can do any validation";
                },
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
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: 'Description area',
                suffixIcon: Icons.remove_red_eye_outlined,
                errorMessage: "That's the error message parameter",
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: 'Description area',
                suffixIcon: Icons.remove_red_eye_outlined,
                validator: (value) {
                  return "Before returning this message you can do any validation";
                },
              ),
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
                errorMessage: "That's the error message parameter",
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: 'Description area',
                suffixIcon: Icons.remove_red_eye_outlined,
                prefixIcon: Icons.phone_outlined,
                validator: (value) {
                  return "Before returning this message you can do any validation";
                },
              ),
              const SizedBox(height: 50),
              const Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Dropdown',
                  style: TextStyle(fontSize: 17),
                ),
              ),
              const SizedBox(height: 20),
              BlincInputComponent.dropdown(
                label: 'Label',
                descriptionText: 'Description area',
                dropdownOptions: _listModel.map((e) => e.name).toList(),
                onChanged: (String? value, int? index) {
                  if (index == null) return;
                  _listModel[index].id;
                },
              ),
              const SizedBox(height: 20),
              BlincInputComponent.dropdown(
                onChanged: (value, index) {},
                label: 'Label',
                descriptionText: 'Description area',
                dropdownOptions: ['ss'],
                customOptionBuilder: (index) {
                  return Row(
                    children: [
                      Text(['aihfbfgba'][index])
                    ],
                  );
                },
                placeholder: 'Placeholder',
              ),
              const SizedBox(height: 20),
              BlincInputComponent.dropdown(
                hasBlankOption: true,
                label: 'Label',
                placeholder: 'Placeholder',
                initialValue: 'Input',
                onChanged: (value, index) {},
                customOptionBuilder: (index) {
                  return Row(
                    children: [
                      Text(['aihfbfgba'][index])
                    ],
                  );
                },
                dropdownOptions: ['afijafi'],
                descriptionText: 'Description area',
              ),
              const SizedBox(height: 20),
              BlincInputComponent.dropdown(
                hasBlankOption: true,
                enabled: false,
                label: 'Label',
                placeholder: 'Placeholder',
                initialValue: 'Input',
                onChanged: (value, index) {},
                customOptionBuilder: (index) {
                  return Row(
                    children: [
                      Text(['aihfbfgba'][index])
                    ],
                  );
                },
                dropdownOptions: ['afijafi'],
                descriptionText: 'Description area',
              ),
              const SizedBox(height: 20),
              BlincInputComponent.dropdown(
                hasBlankOption: true,
                label: 'Label',
                placeholder: 'Placeholder',
                initialValue: 'Input',
                onChanged: (value, index) {},
                errorMessage: "That's the error message parameter",
                customOptionBuilder: (index) {
                  return Row(
                    children: [
                      Text(['aihfbfgba'][index])
                    ],
                  );
                },
                dropdownOptions: ['afijafi'],
                descriptionText: 'Description area',
              ),
              const SizedBox(height: 20),
              BlincInputComponent.dropdown(
                hasBlankOption: true,
                label: 'Label',
                placeholder: 'Placeholder',
                initialValue: 'Input',
                onChanged: (value, index) {},
                validator: (value) {
                  return "Before returning this message you can do any validation";
                },
                customOptionBuilder: (index) {
                  return Row(
                    children: [
                      Text(['aihfbfgba'][index])
                    ],
                  );
                },
                dropdownOptions: ['afijafi'],
                descriptionText: 'Description area',
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Dropdown with Leading icon',
                  style: TextStyle(fontSize: 17),
                ),
              ),
              const SizedBox(height: 20),
              BlincInputComponent.dropdown(
                prefixIcon: Icons.phone_outlined,
                label: 'Label',
                descriptionText: 'Description area',
                dropdownOptions: _listModel.map((e) => e.name).toList(),
                onChanged: (String? value, int? index) {
                  if (index == null) return;
                  _listModel[index].id;
                },
              ),
              const SizedBox(height: 20),
              BlincInputComponent.dropdown(
                prefixIcon: Icons.phone_outlined,
                onChanged: (value, index) {},
                label: 'Label',
                descriptionText: 'Description area',
                dropdownOptions: ['ss'],
                customOptionBuilder: (index) {
                  return Row(
                    children: [
                      Text(['aihfbfgba'][index])
                    ],
                  );
                },
                placeholder: 'Placeholder',
              ),
              const SizedBox(height: 20),
              BlincInputComponent.dropdown(
                prefixIcon: Icons.phone_outlined,
                hasBlankOption: true,
                label: 'Label',
                placeholder: 'Placeholder',
                initialValue: 'Input',
                onChanged: (value, index) {},
                customOptionBuilder: (index) {
                  return Row(
                    children: [
                      Text(['aihfbfgba'][index])
                    ],
                  );
                },
                dropdownOptions: ['afijafi'],
                descriptionText: 'Description area',
              ),
              const SizedBox(height: 20),
              BlincInputComponent.dropdown(
                prefixIcon: Icons.phone_outlined,
                hasBlankOption: true,
                enabled: false,
                label: 'Label',
                placeholder: 'Placeholder',
                initialValue: 'Input',
                onChanged: (value, index) {},
                customOptionBuilder: (index) {
                  return Row(
                    children: [
                      Text(['aihfbfgba'][index])
                    ],
                  );
                },
                dropdownOptions: ['afijafi'],
                descriptionText: 'Description area',
              ),
              const SizedBox(height: 20),
              BlincInputComponent.dropdown(
                prefixIcon: Icons.phone_outlined,
                hasBlankOption: true,
                label: 'Label',
                placeholder: 'Placeholder',
                initialValue: 'Input',
                onChanged: (value, index) {},
                errorMessage: "That's the error message parameter",
                customOptionBuilder: (index) {
                  return Row(
                    children: [
                      Text(['aihfbfgba'][index])
                    ],
                  );
                },
                dropdownOptions: ['afijafi'],
                descriptionText: 'Description area',
              ),
              const SizedBox(height: 20),
              BlincInputComponent.dropdown(
                prefixIcon: Icons.phone_outlined,
                hasBlankOption: true,
                label: 'Label',
                placeholder: 'Placeholder',
                initialValue: 'Input',
                onChanged: (value, index) {},
                validator: (value) {
                  return "Before returning this message you can do any validation";
                },
                customOptionBuilder: (index) {
                  return Row(
                    children: [
                      Text(['aihfbfgba'][index])
                    ],
                  );
                },
                dropdownOptions: ['afijafi'],
                descriptionText: 'Description area',
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

class ModelTest {
  final String name;
  final int id;

  ModelTest({
    required this.name,
    required this.id,
  });
}
