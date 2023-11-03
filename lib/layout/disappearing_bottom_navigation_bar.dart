import 'package:flutter/material.dart';
import 'package:uhcdesa/configs/colors.dart';
import 'package:uhcdesa/layout/animations.dart';
import 'package:uhcdesa/layout/destinations.dart';
import 'package:uhcdesa/layout/transitions/bottom_bar_transition.dart';

class DisappearingBottomNavigationBar extends StatelessWidget {
  const DisappearingBottomNavigationBar({
    super.key,
    required this.barAnimation,
    required this.selectedIndex,
    this.onDestinationSelected,
  });

  final BarAnimation barAnimation;

  final int selectedIndex;
  final ValueChanged<int>? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return BottomBarTransition(
      animation: barAnimation,
      backgroundColor: AppColors.secondary,
      child: NavigationBar(
        elevation: 0,
        destinations: adminDestinations.map<NavigationDestination>(
          (d) {
            return NavigationDestination(
              icon: Icon(
                d.icon,
                color: AppColors.primary,
              ),
              label: d.label,
            );
          },
        ).toList(),
        selectedIndex: selectedIndex,
        onDestinationSelected: onDestinationSelected,
      ),
    );
  }
}
