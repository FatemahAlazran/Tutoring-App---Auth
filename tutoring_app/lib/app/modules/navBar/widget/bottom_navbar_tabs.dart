import 'package:flutter/material.dart';
import 'package:tutoring_app/app/core/extensions/context_extension.dart';

///[BottomNavBarTabs] custome bottom nav bar items class
abstract class BottomNavBarTabs {
  static List<BottomNavigationBarItem> tabs(BuildContext context) {
    return [
      BottomNavigationBarItem(
        icon: const Icon(Icons.message_outlined),
        label: context.translate.tutors,
        activeIcon: const Icon(Icons.message_outlined),
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.person),
        label: context.translate.profile,
        activeIcon: const Icon(Icons.person),
      ),
    ];
  }
}
