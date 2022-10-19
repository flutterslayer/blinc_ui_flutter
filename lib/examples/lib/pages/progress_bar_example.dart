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
      body: Container(
        height: double.maxFinite,
        color: AppColors.colorNeutral_100,
        child: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    SizedBox(height: 20),
                    BlincProgressBar(
                      value: 0.1,
                    ),
                    SizedBox(height: 20),
                    BlincProgressBar(
                      value: 0.2,
                    ),
                    SizedBox(height: 20),
                    BlincProgressBar(
                      value: 0.3,
                    ),
                    SizedBox(height: 20),
                    BlincProgressBar(
                      value: 0.4,
                    ),
                    SizedBox(height: 20),
                    BlincProgressBar(
                      value: 0.5,
                    ),
                    SizedBox(height: 20),
                    BlincProgressBar(
                      value: 0.6,
                    ),
                    SizedBox(height: 20),
                    BlincProgressBar(
                      value: 0.7,
                    ),
                    SizedBox(height: 20),
                    BlincProgressBar(
                      value: 0.8,
                    ),
                    SizedBox(height: 20),
                    BlincProgressBar(
                      value: 0.9,
                    ),
                    SizedBox(height: 20),
                    BlincProgressBar(
                      value: 1.0,
                    ),
                    SizedBox(height: 20),
                    BlincProgressBar(
                      value: 0.1,
                      dark: false,
                    ),
                    SizedBox(height: 20),
                    BlincProgressBar(
                      value: 0.2,
                      dark: false,
                    ),
                    SizedBox(height: 20),
                    BlincProgressBar(
                      value: 0.3,
                      dark: false,
                    ),
                    SizedBox(height: 20),
                    BlincProgressBar(
                      value: 0.4,
                      dark: false,
                    ),
                    SizedBox(height: 20),
                    BlincProgressBar(
                      value: 0.5,
                      dark: false,
                    ),
                    SizedBox(height: 20),
                    BlincProgressBar(
                      value: 0.6,
                      dark: false,
                    ),
                    SizedBox(height: 20),
                    BlincProgressBar(
                      value: 0.7,
                      dark: false,
                    ),
                    SizedBox(height: 20),
                    BlincProgressBar(
                      value: 0.8,
                      dark: false,
                    ),
                    SizedBox(height: 20),
                    BlincProgressBar(
                      value: 0.9,
                      dark: false,
                    ),
                    SizedBox(height: 20),
                    BlincProgressBar(
                      value: 1.0,
                      dark: false,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
