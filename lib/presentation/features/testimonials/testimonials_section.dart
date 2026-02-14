
import 'package:flutter/material.dart';
import 'package:porofolio/presentation/features/testimonials/widgets/testimonial_card.dart';

class TestimonialsSection extends StatelessWidget {
  const TestimonialsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 80.0),
      child: Column(
        children: [
          const Text(
            'What My Clients Say',
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 50),
          Wrap(
            spacing: 40,
            runSpacing: 40,
            alignment: WrapAlignment.center,
            children: const [
              TestimonialCard(
                quote: '"Working with [Your Name] was a game-changer. Their expertise in Flutter and UI/UX is unmatched. Highly recommended!"',
                author: 'John Doe, CEO of Tech Corp',
              ),
              TestimonialCard(
                quote: '"The attention to detail and commitment to quality were outstanding. Our project was a huge success thanks to their dedication."',
                author: 'Jane Smith, Project Manager at Innovate LLC',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
