import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon});
  final IconData icon ;
  @override
  Widget build(BuildContext context) {
    return  Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white.withValues(alpha: .05),
          ),
          child: IconButton(onPressed: () {}, icon: Icon(icon, size: 35)),
        );
  }
}