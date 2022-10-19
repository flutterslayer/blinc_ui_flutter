import 'package:blinc_ui_flutter/blinc_ui_flutter.dart';
import 'package:flutter/material.dart';

class ProgressBarExample extends StatelessWidget {
  const ProgressBarExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Progress component example'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
