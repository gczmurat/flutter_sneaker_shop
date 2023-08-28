import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavBar({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: GNav(color: Colors.grey[500],
      activeColor: Colors.grey[900],
      tabActiveBorder: Border.all(color: Colors.white),
      tabBackgroundColor: Colors.grey.shade100,
      mainAxisAlignment: MainAxisAlignment.center,
      tabBorderRadius: 16,
      onTabChange: (value) => onTabChange!(value),
        tabs: [
        GButton(
          icon: Icons.home,
          text: "Ana Sayfa",
        ),
        GButton(
          icon: Icons.shopping_bag_rounded,
          text: "Sepet",
        ),
      ]),
    );
  }
}
