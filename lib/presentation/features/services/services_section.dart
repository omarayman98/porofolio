
import 'package:flutter/material.dart';
import 'package:porofolio/presentation/features/services/widgets/service_card.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 80.0),
      color: const Color(0xFF16161E), // A slightly different dark shade
      child: Column(
        children: [
          const Text(
            'What I Offer',
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 50),
          Wrap(
            spacing: 40,
            runSpacing: 40,
            alignment: WrapAlignment.center,
            children: const [
              ServiceCard(
                icon: Icons.developer_mode,
                title: 'Web & Mobile Development',
                description: 'High-quality, performant applications for web and mobile platforms using Flutter.',
              ),
              // ServiceCard(
              //   icon: Icons.design_services,
              //   title: 'UI/UX Design',
              //   description: 'Modern, intuitive, and user-friendly designs that enhance user experience.',
              // ),
              ServiceCard(
                icon: Icons.support,
                title: 'Consulting & Support',
                description: 'Expert advice and support to help you achieve your project goals.',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
