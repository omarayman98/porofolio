
import 'package:flutter/material.dart';

class TestimonialCard extends StatelessWidget {
  final String quote;
  final String author;

  const TestimonialCard({super.key, required this.quote, required this.author});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.1)),
      ),
      child: Column(
        children: [
          Text(quote, style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic, color: Colors.white70), textAlign: TextAlign.center),
          const SizedBox(height: 20),
          Text(author, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
        ],
      ),
    );
  }
}
