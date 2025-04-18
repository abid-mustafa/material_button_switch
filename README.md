# Material Button Switch

A simple and elegant Flutter widget that allows users to switch between two customizable screens using Material-style toggle buttons. Ideal for apps that need quick, intuitive toggling between two views, like calendars, checklists, or dashboards.

<p align="center">
  <img src="https://github.com/user-attachments/assets/794da05a-c4b9-48ce-8735-d7da36064112" alt="Material Button Switch Demo" width="600"/>
</p>

## ✨ Features

- Two-icon Material button switcher.
- Smooth transition between two custom widgets.
- Customizable icons and widgets.
- Highlighted icon for the active view.
- Minimal, intuitive design.

## 🚀 Getting Started

To use this package, add it to your `pubspec.yaml`:

```yaml
dependencies:
  material_button_switch: ^0.0.1
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
        widget1: const PageOne(),
        widget2: const PageTwo(),
        icon1: Icons.calendar_today,
        icon2: Icons.check_box_outlined,
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
```

## 📦 Constructor

```dart
MaterialButtonSwitch({
  required Widget widget1,
  required Widget widget2,
  required IconData icon1,
  required IconData icon2,
});
```

| Parameter | Description |
|----------|-------------|
| `widget1` | First view to display. |
| `widget2` | Second view to display. |
| `icon1` | Icon for first view. |
| `icon2` | Icon for second view. |
