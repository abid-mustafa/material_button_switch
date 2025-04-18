import 'package:flutter/material.dart';
import 'package:material_button_switch/material_button_switch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MaterialButtonSwitch(
        widget1: PageOne(),
        widget2: PageTwo(),
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
    return Scaffold(body: Center(child: Text("Page One")));
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Page Two")));
  }
}
