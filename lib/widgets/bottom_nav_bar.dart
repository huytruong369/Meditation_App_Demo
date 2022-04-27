import 'package:flutter/material.dart';

import 'bottom_nav_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 39,
        vertical: 9,
      ),
      height: 69,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          BottomNavItem(
            svgSrc: 'assets/icons/calendar.svg',
            title: 'Today',
          ),
          BottomNavItem(
            svgSrc: 'assets/icons/gym.svg',
            title: 'All Exercises',
            isActive: true,
          ),
          BottomNavItem(
            svgSrc: 'assets/icons/Settings.svg',
            title: 'Settings',
          ),
        ],
      ),
    );
  }
}
