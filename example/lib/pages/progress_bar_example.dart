import 'dart:async';

import 'package:blinc_ui_flutter/blinc_ui_flutter.dart';
import 'package:flutter/material.dart';

class ProgressBarExample extends StatefulWidget {
  const ProgressBarExample({Key? key}) : super(key: key);

  @override
  State<ProgressBarExample> createState() => _ProgressBarExampleState();
}

class _ProgressBarExampleState extends State<ProgressBarExample> {
  double value = 0;
  bool isDarkMode = false;

  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(milliseconds: 200), (timer) {
      updateValue();
    });
  }
  @override
  void dispose(){
    timer.cancel();
    super.dispose();
  }

  void updateValue() {
    final addedValue = (value + 0.05);
    if (addedValue >= 1) {
      setState(() {
        value = 0;
      });
      return;
    }
    setState(() {
      value = addedValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppResponsiveWidget(
      child: Scaffold(
        backgroundColor:
            isDarkMode ? AppColors.colorNeutral_900 : AppColors.colorNeutral_0,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Text('Progress component example'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: Container(
              alignment: Alignment.center,
              child: SizedBox(
                width: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Dark Mode',
                          style: TextStyle(
                            color: isDarkMode
                                ? AppColors.colorNeutral_0
                                : AppColors.colorNeutral_900,
                          ),
                        ),
                        Switch(
                          value: isDarkMode,
                          onChanged: ((value) {
                            setState(() {
                              isDarkMode = !isDarkMode;
                            });
                          }),
                        ),
                      ],
                    ),
                    BlincSpacer.vertical.xxs,
                    BlincLogo(
                      logoTheme:
                          isDarkMode ? LogoTheme.white : LogoTheme.standard,
                    ),
                    BlincSpacer.vertical.xs,
                    BlincProgressBar(
                      value: value,
                      dark: isDarkMode,
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
