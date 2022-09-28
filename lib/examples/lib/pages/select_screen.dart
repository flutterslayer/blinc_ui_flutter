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
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/spacing');
              },
              child: const Text(
                'Spacing',
                style: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/shadows');
              },
              child: const Text(
                'Shadows',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
