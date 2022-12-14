import 'package:flutter/material.dart';
import 'package:blinc_ui_flutter/blinc_ui_flutter.dart';

class BrandExample extends StatelessWidget {
  const BrandExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 237, 237),
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Brand example'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 5,
                ),
                Card(
                  color: Colors.black87,
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: BlincLogo(
                      logoOrientation: LogoOrientation.horizontal,
                      logoTheme: LogoTheme.white,
                    ),
                  ),
                ),
                Card(
                  color: Colors.black87,
                  child: Padding(
                    padding: EdgeInsets.all(22.0),
                    child: BlincLogo(
                      logoOrientation: LogoOrientation.vertical,
                      logoTheme: LogoTheme.white,
                    ),
                  ),
                ),
                Card(
                  color: Colors.black87,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: BlincSymbol(
                      logoTheme: LogoTheme.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Card(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child:
                        BlincLogo(logoOrientation: LogoOrientation.horizontal),
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(22.0),
                    child: BlincLogo(logoOrientation: LogoOrientation.vertical),
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: BlincSymbol(),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
