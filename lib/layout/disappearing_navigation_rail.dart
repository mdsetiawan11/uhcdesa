import 'package:flutter/material.dart';
import 'package:uhcdesa/configs/colors.dart';
import 'package:uhcdesa/layout/animations.dart';
import 'package:uhcdesa/layout/destinations.dart';
import 'package:uhcdesa/layout/transitions/nav_rail_transition.dart';

class DisappearingNavigationRail extends StatelessWidget {
  const DisappearingNavigationRail({
    super.key,
    required this.backgroundColor,
    required this.railAnimation,
    required this.selectedIndex,
    this.onDestinationSelected,
  });

  final RailAnimation railAnimation;
  final Color backgroundColor;
  final int selectedIndex;
  final ValueChanged<int>? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return NavRailTransition(
      animation: railAnimation,
      backgroundColor: backgroundColor,
      child: NavigationRail(
        useIndicator: true,
        selectedIndex: selectedIndex,
        unselectedIconTheme: const IconThemeData(color: AppColors.secondary),
        selectedIconTheme: const IconThemeData(color: AppColors.primary),
        indicatorColor: Colors.white,
        onDestinationSelected: onDestinationSelected,
        leading: const Icon(
          Icons.android,
          size: 50,
          color: AppColors.primary,
        ),
        destinations: adminDestinations.map((d) {
          return NavigationRailDestination(
            icon: Icon(d.icon),
            label: Text(d.label),
          );
        }).toList(),
      ),
    );
    // ... to here.
  }
}
