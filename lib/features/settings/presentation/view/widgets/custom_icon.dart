import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey[800],
      ),
      padding: const EdgeInsets.all(5.0),
      child: Icon(
        icon,
        size: 30,
        color: Colors.red,
      ),
    );
  }
}
