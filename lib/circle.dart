import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;

  const CircleButton({Key? key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(icon),
        onPressed: () {},
      ),
    );
  }
}
