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
            BlincSpacer.vertical.xxs,
            BlincText('Proxima Nova').weightThin.heightXXS.sizeXXXS,
            BlincSpacer.vertical.xxs,
            BlincText('Proxima Nova').weightLight.heightXS.sizeXS,
            BlincSpacer.vertical.xxs,
            BlincText('Proxima Nova').weightRegular.heightSM.sizeMD,
            BlincSpacer.vertical.xxs,
            BlincText('Proxima Nova').weightMedium.heightMD.sizeLG,
            BlincSpacer.vertical.xxs,
            BlincText('Proxima Nova').weightSemiBold.heightXXL.sizeHuge,
            BlincSpacer.vertical.xxs,
            BlincText('Proxima Nova').weightExtraBold.heightHuge.sizeXHuge,
            BlincSpacer.vertical.xxs,
            BlincText('Proxima Nova').weightBlack.heightXHuge.sizeXXHuge,
          ],
        ),
      ),
    );
  }
}
