import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
    required this.label,
    required this.active,
  });

  final String label;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(right: 8.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: active ? Colors.black : Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(width: 1, color: active ? Colors.transparent: const Color(0xffDEDEDE))
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            color: active ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
