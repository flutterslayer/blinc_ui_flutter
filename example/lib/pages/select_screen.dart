import 'package:flutter/material.dart';

class SelectScreen extends StatelessWidget {
  const SelectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Select example'),
      ),
      body: SafeArea(
        child: SizedBox(
            child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
          children: [
            selectBlock(context: context, route: '/spacing', text: 'Spacing'),
            selectBlock(context: context, route: '/buttons', text: 'Buttons'),
            selectBlock(context: context, route: '/shadows', text: 'Shadows'),
            selectBlock(context: context, route: '/inputs', text: 'Inputs'),
            selectBlock(context: context, route: '/brand', text: 'Brand'),
            selectBlock(
              context: context,
              route: '/progress_bar',
              text: 'Progress Bar',
            ),
            selectBlock(context: context, route: '/text', text: 'Text'),
          ],
        )),
      ),
    );
  }
}

Widget selectBlock({
  required BuildContext context,
  required String route,
  required String text,
}) {
  return ElevatedButton(
    onPressed: () {
      Navigator.pushNamed(context, route);
    },
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 16,
      ),
    ),
  );
}
