import 'package:blinc_ui_flutter/blinc_ui_flutter.dart';
import 'package:examples/pages/borders_example.dart';
import 'package:examples/pages/brand_example.dart';
import 'package:examples/pages/button_example.dart';
import 'package:examples/pages/input_example.dart';
import 'package:examples/pages/progress_bar_example.dart';
import 'package:examples/pages/select_screen.dart';
import 'package:examples/pages/shadows_example.dart';
import 'package:examples/pages/spacing_example.dart';
import 'package:examples/pages/text_example.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const SelectScreen(),
        '/spacing': (context) => const SpacingExample(),
        '/borders': (context) => const BordersExample(),
        '/buttons': (context) => const ButtonExample(),
        '/shadows': (context) => const ShadowsExample(),
        '/inputs': (context) => InputExample(),
        '/brand': (context) => const BrandExample(),
        '/progress_bar': (context) => const ProgressBarExample(),
        '/text': (context) => const TextExample(),
        '/login': (context) => const LoginPage(),
      },
    ),
  );
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final AppBar _appBar = AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    foregroundColor: Colors.red,
  );
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: BlincInputComponent.form(
            globalKey: _formKey,
            child: ListView(
              children: [
                const Spacer(
                  flex: 2,
                ),
                BlincText('Login').weightLight.heightHuge.sizeHuge,
                BlincSpacer.vertical.xxs,
                BlincText(
                        'Welcome back! Enter your email and password to continue.')
                    .weightRegular
                    .heightSM
                    .sizeSM,
                BlincSpacer.vertical.xs,
                BlincInputComponent.textField(
                  textEditingController: _emailController,
                  label: 'Email',
                  validator: BlincInputComponent.validations.validateMail,
                ),
                BlincSpacer.vertical.xxxs,
                BlincInputComponent.textField(
                  textEditingController: _passController,
                  label: 'Password',
                  validator: BlincInputComponent.validations.validatePasscode,
                ),
                BlincSpacer.vertical.xxxs,
                BlincButton(
                  text: 'LOGIN',
                  onPressed: () {
                    if (!_formKey.currentState!.validate()) {
                      return;
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
