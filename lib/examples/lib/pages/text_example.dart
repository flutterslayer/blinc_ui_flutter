import 'package:blinc_ui_flutter/blinc_ui_flutter.dart';
import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Text component example'),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(8.0),
          children: [
            const SizedBox(height: 20),
            BlincText('Proxima Nova').weightThin.heightXXS.sizeXXXS,
            const SizedBox(height: 20),
            BlincText('Proxima Nova').weightLight.heightXS.sizeXS,
            const SizedBox(height: 20),
            BlincText('Proxima Nova').weightRegular.heightSM.sizeMD,
            const SizedBox(height: 20),
            BlincText('Proxima Nova').weightMedium.heightMD.sizeLG,
            const SizedBox(height: 20),
            BlincText('Proxima Nova').weightSemiBold.heightXXL.sizeHuge,
            const SizedBox(height: 20),
            BlincText('Proxima Nova').weightExtraBold.heightHuge.sizeXHuge,
            const SizedBox(height: 20),
            BlincText('Proxima Nova').weightBlack.heightXHuge.sizeXXHuge,
          ],
        ),
      ),
    );
  }
}
