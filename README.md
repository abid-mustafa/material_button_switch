# Material Button Switch

A simple and elegant Flutter widget that lets users switch between multiple customizable screens using Material-style toggle buttons. Ideal for apps requiring quick, intuitive toggling between views, such as calendars, checklists, or dashboards with two or more pages.

<p align="center">
  <img src="https://github.com/user-attachments/assets/5c5930eb-c021-4bdc-bbd3-3d7ee6878142" alt="Material Button Switch Demo" width="600"/>
</p>

## ✨ Features

- Multi-icon Material button switcher.
- Smooth transition between custom widgets.
- Customizable icons and widgets.
- Dynamic active and inactive colors.
- Highlighted icon for the active view.
- Minimal, intuitive design.

## 🚀 Getting Started

To use this package, add it to your `pubspec.yaml`:

```yaml
dependencies:
  material_button_switch: ^0.1.0
```

Then run:

```bash
flutter pub get
```

## 🧑‍💻 Usage

Here's a simple example of how to use the `MaterialButtonSwitch` widget:

```dart
import 'package:flutter/material.dart';
import 'package:material_button_switch/material_button_switch.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MaterialButtonSwitch(
        pages: const [PageOne(), PageTwo(), PageThree()],
        icons: const [Icons.calendar_today, Icons.check_box_outlined, Icons.dashboard],
        activeColor: Colors.blue,
        inactiveColor: Colors.grey,
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("Page One")));
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("Page Two")));
  }
}

class PageThree extends StatelessWidget {
  const PageThree({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("Page Three")));
  }
}
```

## 📦 Constructor

```dart
MaterialButtonSwitch({
  required List<Widget> pages,
  required List<IconData> icons,
  required Color activeColor,
  required Color inactiveColor,
});
```

| Parameter       | Description                                                 |
| --------------- | ----------------------------------------------------------- |
| `pages`         | List of views to display; each page corresponds to an icon. |
| `icons`         | List of icons representing each page.                       |
| `activeColor`   | Color of the currently active icon.                         |
| `inactiveColor` | Color of inactive icons.                                    |
