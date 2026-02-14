
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      color: const Color(0xFF1E1E2F),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '© 2024 Your Name Here. All Rights Reserved.',
            style: TextStyle(color: Colors.white70),
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.facebook, color: Colors.white)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.link, color: Colors.white)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.person, color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}
