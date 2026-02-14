import 'package:flutter/material.dart';

import '../../../utils/responsive.dart';
import '../../contact/contact_section.dart';

class HeroSection extends StatefulWidget {
  final VoidCallback onContactMeTap;
  final VoidCallback onViewMyWorkTap;

  const HeroSection({
    super.key,
    required this.onContactMeTap,
    required this.onViewMyWorkTap,
  });

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.2),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: SlideTransition(
        position: _slideAnimation,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 80.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Omar Ayman El-Sayed',
                style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Senior Mobile Developer',
                style: TextStyle(fontSize: 24, color: Colors.white70),
              ),
              const SizedBox(height: 4),
              const Text(
                'Flutter, Native',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: widget.onViewMyWorkTap,
                    child: const Text('View My Work'),
                  ),
                  const SizedBox(width: 20),
                  OutlinedButton(
                    onPressed: widget.onContactMeTap,
                    child: const Text('Contact Me'),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
