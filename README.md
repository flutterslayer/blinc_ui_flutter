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
### Example
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

## Buttons
You can create buttons with BlincButton component. There are fixed button sizes and styles to use. It's possible to create themes and different sizings passing properties:
* text: sets the buttons' text
* textStyle: sets the text style
* isUnderlined: if true will create a text underline
* buttonTheme: accepts a BlincButtonTheme, where you can create your customized preset settings
* padding: the padding space inside the button
* icon: here you can pass an IconData with your icon
* isIconInverted: if true, the icon will be placed at the right size. The default is on the left.
* isLoading: if true will show a progress indicator component
* isFluid: if true the button will take all the available space around

You can access the presets with the function .smallSecondary, for example. It will create a small button with secondary style.

### Example
<img src="https://user-images.githubusercontent.com/103216807/197005540-299dc346-19aa-4ba0-be55-7a7ce6f6b772.gif" align = "right" width = "350px">


```dart
SizedBox(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      BlincButton(
        text: 'Large Primary',
        icon: Icons.add_a_photo,
        onPressed: () {},
      ).largePrimary(),
      SizedBox(
        child: BlincButton(
          text: 'Large Secondary',
          onPressed: () {},
        ).largeSecondary(),
      ),
      BlincButton(
        text: 'Large Tertiary',
        onPressed: () {},
        icon: Icons.location_on,
      ).largeTertiary(),
      Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlincButton(
              text: 'Small Primary',
              icon: Icons.person_pin_circle_outlined,
              onPressed: () {},
            ).smallPrimary(),
            BlincButton(
              text: 'Small Tertiary',
              icon: Icons.person_pin_circle_outlined,
              onPressed: () {},
              isIconInverted: true,
            ).smallTertiary(),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlincButton(
              isLoading: true,
              onPressed: () {},
            ).smallSecondary(),
            BlincButton(
              isLoading: true,
              onPressed: () {},
            ).smallPrimary(),
          ],
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 220,
            height: 150,
            child: BlincButton(
              text: 'Fluid Large Primary',
              isFluid: true,
              onPressed: () {},
            ).largePrimary(),
          ),
          Column(
            children: [
              SizedBox(
                width: 110,
                height: 60,
                child: BlincButton(
                  text: 'Large Secondary',
                  isFluid: true,
                  onPressed: () {},
                ).largeSecondary(),
              ),
              SizedBox(
                width: 110,
                height: 90,
                child: BlincButton(
                  text: 'Large Tertiary',
                  isFluid: true,
                  onPressed: () {},
                ).largeTertiary(),
              ),
            ],
          ),
        ],
      )
    ],
  ),
  ),
```



## IconButtons
You can create buttons with IconBlincButton component. Just as the BlincButton component, there are fixed button sizes and styles to use. It's possible to create themes and different sizings passing properties:
* child: support child components
* buttonTheme: accepts a BlincIconButtonTheme, where you can create your customized preset settings
* iconPresets: accepts an IconPresets, to customize the button sizing, shape and border
* icon: here you can pass an IconData with your icon

You can access the presets with the function .smallSecondary, for example. It will create a small button with secondary style.

### Example
<img src="https://user-images.githubusercontent.com/103216807/197007974-a4117f09-9a14-431f-9f60-d7b8043f7596.png" align = "right" width = "300px">

```dart
 SizedBox(
  child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlincIconButton(
              icon: Icons.facebook,
              onPressed: () {},
            ).iconLargePrimary(),
            BlincIconButton(
              onPressed: () {},
              icon: Icons.whatsapp,
            ).iconLargeSecondary(),
            BlincIconButton(
              onPressed: () {},
              icon: Icons.accessibility_new_sharp,
            ).iconLargeTertiary(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlincIconButton(
              onPressed: () {},
              icon: Icons.arrow_back_ios_new,
            ).iconSmallPrimary(),
            BlincIconButton(
              onPressed: () {},
              icon: Icons.subdirectory_arrow_left_sharp,
            ).iconSmallSecondary(),
            BlincIconButton(
              onPressed: () {},
              icon: Icons.arrow_forward_ios,
            ).iconSmallTertiary(),
          ],
        ),
      ]
    ),
  ),
```

## Shadows
The BlincShadow component creates pre-defined styles for Container shadows. It has a variety of sizes:

* zero: provides a Container with no shadow
* sm: provides a Container with a small shadow
* md: provides a Container with a medium shadow
* lg: provides a Container with a large shadow
* xl: provides a Container with an extra large shadow
* huge: provides a Container with a huge shadow

It should be placed inside the boxShadow method inside the BoxDecoration:
```dart
 Container(
    width: 60,
    height: 60,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 227, 227, 225),
      boxShadow: [
        blincShadow,
      ],
    ),
  );
  ```
  
### Example

<img src="https://user-images.githubusercontent.com/103216807/197018679-d75a9847-fffa-40b3-9db4-50d012af72d3.png" align = "right" width = "300px">



```dart
 SafeArea(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      BlincSpacer.vertical.lg,
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          block(BlincShadow.zero, 'zero'),
          block(BlincShadow.sm, 'sm')
        ],
      ),
      BlincSpacer.vertical.md,
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          block(BlincShadow.md, 'md'),
          block(BlincShadow.lg, 'lg')
        ],
      ),
      BlincSpacer.vertical.md,
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          block(BlincShadow.xl, 'xl'),
          block(BlincShadow.huge, 'huge')
        ],
      ),
    ],
  ),
),

Widget block(BoxShadow blincShadow, String size) {
  return SizedBox(
    width: 150,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('BlincShadow.$size'),
        BlincSpacer.vertical.xxs,
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 227, 227, 225),
            boxShadow: [
              blincShadow,
            ],
          ),
        ),
      ],
    ),
  );
}
```

## Borders
The BlincBorders component creates pre-defined borders for Container's BoxDecoration. The available styles are:

* zero: no border
* sm: thin border
* md: medium border
* lg: thick border

### Example

<img src="https://user-images.githubusercontent.com/103216807/197021560-93d01cb1-9847-49c2-94d0-1f13c55cba38.png" align = "right" width = "300px">



```dart
SafeArea(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          block(BlincBorders.zero, 'zero'),
          block(BlincBorders.sm, 'sm'),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          block(BlincBorders.md, 'md'),
          block(BlincBorders.lg, 'lg'),
        ],
      ),
    ],
  ),
),

Widget block(BoxBorder blincBorder, String size) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('BlincBorders.$size'),
        const SizedBox(height: 15),
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 242, 242, 239),
            border: blincBorder,
          ),
        ),
      ],
    ),
  );
}
```


## AppColors
The AppColors is a class that provides a color palette for general use. It can be accessed through static methods.

### Example

<img src="https://user-images.githubusercontent.com/103216807/197027349-d9005bae-13cc-4e39-81e2-dbd73cc68478.png" align = "right" width = "300px">



```dart
SafeArea(
  child: SizedBox(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        block(
          context,
          width: 50,
          height: MediaQuery.of(context).size.height,
          color: AppColors.colorBlueInfo_200,
        ),
        BlincSpacer.horizontal.xxs,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlincSpacer.vertical.xxxs,
            block(
              context,
              width: 280,
              height: 90,
              color: AppColors.colorBlueSecondary,
            ),
            BlincSpacer.vertical.xs,
            block(
              context,
              width: 280,
              height: 90,
              color: AppColors.colorBlueSecondary,
            ),
            BlincSpacer.vertical.sm,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                block(
                  context,
                  width: 80,
                  height: 250,
                  color: AppColors.colorNeutral_600,
                ),
                BlincSpacer.horizontal.xxs,
                Column(
                  children: [
                    BlincSpacer.vertical.sm,
                    block(
                      context,
                      width: 180,
                      height: 218,
                      color: AppColors.colorOrangePrimary,
                    ),
                  ],
                ),
              ],
            ),
            BlincSpacer.vertical.xs,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                block(
                  context,
                  width: 180,
                  height: 50,
                  color: AppColors.colorGreenSecondary,
                ),
                BlincSpacer.horizontal.xxs,
                block(
                  context,
                  width: 80,
                  height: 50,
                  color: AppColors.colorOrangeAlert_300,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ),
),

Widget block(
  context, {
  required double width,
  required double height,
  required Color color,
}) {
  return Container(
    width: width,
    height: height,
    color: color,
  );
}
```

