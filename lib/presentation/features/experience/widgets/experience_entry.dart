
import 'package:flutter/material.dart';

class ExperienceEntry extends StatelessWidget {
  final String title;
  final String company;
  final String duration;
  final String description;

  const ExperienceEntry({
    super.key,
    required this.title,
    required this.company,
    required this.duration,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const SizedBox(
          //   width: 80,
          //   child: Text(
          //     'Year', // Placeholder for year
          //     style: TextStyle(fontSize: 16, color: Colors.white70),
          //   ),
          // ),
          // const SizedBox(width: 20),
          Column(
            children: [
              Container(
                width: 2,
                height: 20,
                color: const Color(0xFF448AFF),
              ),
              Container(
                width: 16,
                height: 16,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF448AFF),
                ),
              ),
              Container(
                width: 2,
                height: 100, // This should be dynamic
                color: const Color(0xFF448AFF),
              ),
            ],
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
                Text(company, style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic, color: Colors.white70)),
                Text(duration, style: const TextStyle(fontSize: 16, color: Colors.white54)),
                const SizedBox(height: 10),
                Text(description, style: const TextStyle(fontSize: 16, color: Colors.white70)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
