import 'package:flutter/material.dart';

class MaterialButtonSwitch extends StatefulWidget {
  final List<Widget> pages;
  final List<IconData> icons;
  final Color activeColor;
  final Color inactiveColor;

  /// A horizontal icon switcher that controls page navigation.
  ///
  /// Displays a row of icons corresponding to pages. Tapping an icon jumps
  /// to the associated page, and swiping updates the selected icon.
  ///
  /// Limits: maximum 5 icons/pages, each icon corresponds to exactly one page.
  const MaterialButtonSwitch({
    super.key,
    required this.pages,
    required this.icons,
    required this.activeColor,
    required this.inactiveColor,
  }) : assert(
         pages.length == icons.length && pages.length <= 5,
         "Number of Pages and Icons must be same and less than 5",
       );

  @override
  State<MaterialButtonSwitch> createState() => _MaterialButtonSwitchState();
}

/// The state for [MaterialButtonSwitch], manages page selection and controller.
class _MaterialButtonSwitchState extends State<MaterialButtonSwitch> {
  /// Controller for swiping pages.
  final PageController _pageController = PageController();

  /// Tracks currently selected page.
  int _selectedIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // PageView for screen switching
        PageView(
          controller: _pageController,
          children: widget.pages,
          onPageChanged: (index) => {setState(() => _selectedIndex = index)},
        ),
        Positioned(
          top: 16.0,
          left: 16.0,
          right: 16.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(widget.icons.length, (index) {
                      return IconButton(
                        icon: Icon(widget.icons[index]),
                        color:
                            _selectedIndex == index
                                ? widget.activeColor
                                : widget.inactiveColor,
                        onPressed: () => {_pageController.jumpToPage(index)},
                      );
                    }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
