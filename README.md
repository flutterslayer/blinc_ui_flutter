<p>&nbsp;</p>
<p align="center">
<img src="https://user-images.githubusercontent.com/103216807/196970171-ad426a42-dccf-48ec-bcfa-499ccde51ecf.png" height="100" alt="Blinc UI Flutter" />
</p>
<p>&nbsp;</p>

<p align="center">Blinc UI Flutter provides pre-built, ready-to-use flutter components.  <br /> It includes buttons, typography, spacing, decorations, and more. </p>


# Installing

### 1. Depend on it

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  blinc_ui_flutter: ^1.0.0
```

### 2. Install it

You can install packages from the command line:

```
$ flutter pub get blinc_ui_flutter
```


### 3. Import it

Now in your `Dart` code, you can use:

```dart
import 'package:blinc_ui_flutter/blinc_ui_flutter.dart';
```

# Usage

## Spacings
You can easily create your spacings by using the BlincSpacer component. You can choose if it's vertical or horizontal and then the size, ranging from xxxs, the smallest size, to huge:
* xxxs
* xxs
* xs
* sm
* md
* lg
* xl
* xxl
* xxxl
* huge

<img src="https://user-images.githubusercontent.com/103216807/196975750-65ca6823-8877-427d-b3fc-621c5cff7681.png" align = "right" height = "300px">

```dart
SizedBox(
  width: MediaQuery.of(context).size.width,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      BlincSpacer.vertical.xxs,
      BlincButton(
        text: "I'm a BlincUIButton",
        onPressed: () {},
      ).largePrimary(),
      BlincSpacer.vertical.xxs,
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              BlincButton(
                text: 'Another Button',
                onPressed: () {},
              ).smallPrimary(),
              BlincSpacer.vertical.xxxs,
              BlincButton(
                text: 'Another Button',
                onPressed: () {},
              ).smallPrimary(),
              BlincSpacer.vertical.xxxs,
              BlincButton(
                text: 'Another Button',
                onPressed: () {},
              ).smallPrimary(),
            ],
          ),
          BlincSpacer.horizontal.xxxs,
          SizedBox(
            width: 180,
            height: 142,
            child: BlincButton(
              text: 'Fluid Large Secondary',
              isFluid: true,
              onPressed: () {},
            ).largeSecondary(),
          ),
        ],
      )
    ],
  ),
),
```


