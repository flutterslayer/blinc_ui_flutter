import 'package:blinc_ui_flutter/blinc_ui_flutter.dart';
import 'package:flutter/material.dart';

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return AppResponsiveWidget(
      child: Scaffold(
        appBar: BlincAppBar(
          title: const Text('Password Recover',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: AppColors.colorNeutral_800,
          ),),
          backOnPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}