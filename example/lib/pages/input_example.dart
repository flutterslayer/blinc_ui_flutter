import 'package:blinc_ui_flutter/blinc_ui_flutter.dart';
import 'package:flutter/material.dart';

class InputExample extends StatefulWidget {
  const InputExample({Key? key}) : super(key: key);

  @override
  State<InputExample> createState() => _InputExampleState();
}

class _InputExampleState extends State<InputExample> {
  final _globalKey = GlobalKey<FormState>();
  final _listModel = [
    ModelTest(name: 'name 1', id: 1),
    ModelTest(name: 'name 2', id: 2),
    ModelTest(name: 'name 3', id: 3),
  ];
  final String _descriptionText = 'Description area';
  String _onChangedDescriptionText = 'Select any option to change this text';
  final String _blankOptionDescriptionText =
      'This dropdown has the blank option, try it out!';

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
                descriptionText: _descriptionText,
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: _descriptionText,
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: _descriptionText,
                textEditingController: TextEditingController(text: 'Input'),
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: _descriptionText,
                textEditingController: TextEditingController(text: 'Input'),
                enabled: false,
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: _descriptionText,
                validator: BlincInputComponent.validations.required,
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: _descriptionText,
                errorMessage: "That's the error message parameter",
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: _descriptionText,
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
                descriptionText: _descriptionText,
                suffixIcon: Icons.remove_red_eye_outlined,
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: _descriptionText,
                suffixIcon: Icons.remove_red_eye_outlined,
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: _descriptionText,
                suffixIcon: Icons.remove_red_eye_outlined,
                textEditingController: TextEditingController(text: 'Input'),
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: _descriptionText,
                suffixIcon: Icons.remove_red_eye_outlined,
                textEditingController: TextEditingController(text: 'Input'),
                enabled: false,
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: _descriptionText,
                suffixIcon: Icons.remove_red_eye_outlined,
                validator: BlincInputComponent.validations.required,
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: _descriptionText,
                suffixIcon: Icons.remove_red_eye_outlined,
                errorMessage: "That's the error message parameter",
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: _descriptionText,
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
                descriptionText: _descriptionText,
                suffixIcon: Icons.remove_red_eye_outlined,
                prefixIcon: Icons.phone_outlined,
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: _descriptionText,
                suffixIcon: Icons.remove_red_eye_outlined,
                prefixIcon: Icons.phone_outlined,
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: _descriptionText,
                suffixIcon: Icons.remove_red_eye_outlined,
                prefixIcon: Icons.phone_outlined,
                textEditingController: TextEditingController(text: 'Input'),
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: _descriptionText,
                suffixIcon: Icons.remove_red_eye_outlined,
                prefixIcon: Icons.phone_outlined,
                textEditingController: TextEditingController(text: 'Input'),
                enabled: false,
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: _descriptionText,
                suffixIcon: Icons.remove_red_eye_outlined,
                prefixIcon: Icons.phone_outlined,
                errorMessage: "That's the error message parameter",
              ),
              const SizedBox(height: 20),
              BlincInputComponent.textField(
                label: 'Label',
                placeholder: 'Placeholder',
                descriptionText: _descriptionText,
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
                descriptionText: _descriptionText,
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
                descriptionText: _descriptionText,
                dropdownOptions: _listModel.map((e) => e.name).toList(),
                customOptionBuilder: (value, index) {
                  return Row(
                    children: [
                      Text(_listModel[index].name),
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
                customOptionBuilder: (value, index) {
                  return Row(
                    children: [
                      Text(_listModel[index].name),
                    ],
                  );
                },
                dropdownOptions: _listModel.map((e) => e.name).toList(),
                descriptionText: _descriptionText,
              ),
              const SizedBox(height: 20),
              BlincInputComponent.dropdown(
                hasBlankOption: true,
                enabled: false,
                label: 'Label',
                placeholder: 'Placeholder',
                initialValue: 'Input',
                onChanged: (value, index) {},
                customOptionBuilder: (value, index) {
                  return Row(
                    children: [
                      Text(_listModel[index].name),
                    ],
                  );
                },
                dropdownOptions: _listModel.map((e) => e.name).toList(),
                descriptionText: _descriptionText,
              ),
              const SizedBox(height: 20),
              BlincInputComponent.dropdown(
                hasBlankOption: true,
                label: 'Label',
                placeholder: 'Placeholder',
                initialValue: 'Input',
                onChanged: (value, index) {},
                errorMessage: "That's the error message parameter",
                customOptionBuilder: (value, index) {
                  return Row(
                    children: [
                      Text(_listModel[index].name),
                    ],
                  );
                },
                dropdownOptions: _listModel.map((e) => e.name).toList(),
                descriptionText: _descriptionText,
              ),
              const SizedBox(height: 20),
              BlincInputComponent.dropdown(
                label: 'Label',
                placeholder: 'Placeholder',
                initialValue: 'Input',
                onChanged: (value, index) {},
                validator: (value) {
                  return "Before returning this message you can do any validation";
                },
                customOptionBuilder: (value, index) {
                  return Row(
                    children: [Text(_listModel[index].name)],
                  );
                },
                dropdownOptions: _listModel.map((e) => e.name).toList(),
                descriptionText: _descriptionText,
              ),
              const SizedBox(height: 20),
              BlincInputComponent.dropdown(
                label: 'Label',
                placeholder: 'Placeholder',
                initialValue: 'Input',
                onChanged: (value, index) {
                  setState(() {
                    _onChangedDescriptionText = 'On Changed was called';
                  });
                },
                customOptionBuilder: (value, index) {
                  return Row(
                    children: [Text(_listModel[index].name)],
                  );
                },
                dropdownOptions: _listModel.map((e) => e.name).toList(),
                descriptionText: _onChangedDescriptionText,
              ),
              const SizedBox(height: 20),
              BlincInputComponent.dropdown(
                hasBlankOption: true,
                label: 'Label',
                placeholder: 'Placeholder',
                onChanged: (value, index) {},
                customOptionBuilder: (value, index) {
                  return Row(
                    children: [Text(_listModel[index].name)],
                  );
                },
                dropdownOptions: _listModel.map((e) => e.name).toList(),
                descriptionText: _blankOptionDescriptionText,
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
                descriptionText: _descriptionText,
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
                descriptionText: _descriptionText,
                dropdownOptions: _listModel.map((e) => e.name).toList(),
                customOptionBuilder: (value, index) {
                  return Row(
                    children: [
                      Text(_listModel[index].name),
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
                customOptionBuilder: (value, index) {
                  return Row(
                    children: [
                      Text(_listModel[index].name),
                    ],
                  );
                },
                dropdownOptions: _listModel.map((e) => e.name).toList(),
                descriptionText: _descriptionText,
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
                customOptionBuilder: (value, index) {
                  return Row(
                    children: [
                      Text(_listModel[index].name),
                    ],
                  );
                },
                dropdownOptions: _listModel.map((e) => e.name).toList(),
                descriptionText: _descriptionText,
              ),
              const SizedBox(height: 20),
              BlincInputComponent.dropdown(
                prefixIcon: Icons.phone_outlined,
                label: 'Label',
                placeholder: 'Placeholder',
                initialValue: 'Input',
                onChanged: (value, index) {},
                errorMessage: "That's the error message parameter",
                customOptionBuilder: (value, index) {
                  return Row(
                    children: [
                      Text(_listModel[index].name),
                    ],
                  );
                },
                dropdownOptions: _listModel.map((e) => e.name).toList(),
                descriptionText: _descriptionText,
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
                customOptionBuilder: (value, index) {
                  return Row(
                    children: [
                      Text(_listModel[index].name),
                    ],
                  );
                },
                dropdownOptions: _listModel.map((e) => e.name).toList(),
                descriptionText: _descriptionText,
              ),
              const SizedBox(height: 20),
              BlincInputComponent.dropdown(
                prefixIcon: Icons.phone_outlined,
                label: 'Label',
                placeholder: 'Placeholder',
                initialValue: 'Input',
                onChanged: (value, index) {
                  setState(() {
                    _onChangedDescriptionText = 'On Changed was called';
                  });
                },
                customOptionBuilder: (value, index) {
                  return Row(
                    children: [Text(_listModel[index].name)],
                  );
                },
                dropdownOptions: _listModel.map((e) => e.name).toList(),
                descriptionText: _onChangedDescriptionText,
              ),
              const SizedBox(height: 20),
              BlincInputComponent.dropdown(
                prefixIcon: Icons.phone_outlined,
                hasBlankOption: true,
                label: 'Label',
                placeholder: 'Placeholder',
                onChanged: (value, index) {},
                customOptionBuilder: (value, index) {
                  return Row(
                    children: [Text(_listModel[index].name)],
                  );
                },
                dropdownOptions: _listModel.map((e) => e.name).toList(),
                descriptionText: _blankOptionDescriptionText,
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
