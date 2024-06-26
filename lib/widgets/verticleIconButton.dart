import 'package:flutter/material.dart';

class VerticleIconButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;

  VerticleIconButton({
    Key? key,
    required this.icon,
    required this.onTap,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Column(
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(height: 2.0),
          Text(title,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w600))
        ],
      ),
    );
  }
}
