import 'package:flutter/material.dart';

class MaterialButtonSwitch extends StatefulWidget {
  final Widget widget1;
  final Widget widget2;
  final IconData icon1;
  final IconData icon2;
  const MaterialButtonSwitch(
      {super.key, required this.widget1, required this.widget2, required this.icon1, required this.icon2});

  @override
  State<MaterialButtonSwitch> createState() => _MaterialButtonSwitchState();
}

class _MaterialButtonSwitchState extends State<MaterialButtonSwitch> {
  // Page controller to control the swiping
  final PageController _pageController = PageController();

  // Track the selected index
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // PageView for screen switching
          PageView(
            controller: _pageController,
            children: [
              widget.widget1, // First screen
              widget.widget2, // Second screen
            ],
            onPageChanged: (index) {
              setState(() {
                _selectedIndex = index; // Update selected index when swiping
              });
            },
          ),
          // Positioned Row with the buttons
          Positioned(
            top: 16.0,
            left: 16.0,
            right: 16.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _selectedIndex = 0; // Switch to widget2
                          });
                          // Switch to widget1
                          _pageController.jumpToPage(0);
                        },
                        icon: Icon(widget.icon1),
                        color: _selectedIndex == 0
                            ? Colors.blue
                            : Colors.black, // Change color if selected
                      ),
                      SizedBox(width: 16),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _selectedIndex = 1; // Switch to widget2
                          });
                          // Switch to widget2
                          _pageController.jumpToPage(1);
                        },
                        icon: Icon(widget.icon2),
                        color: _selectedIndex == 1
                            ? Colors.blue
                            : Colors.black, // Change color if selected
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
