import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 900;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 100.0),
      color: const Color(0xFF16161E),
      child: isMobile
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildImage(),
                const SizedBox(height: 40),
                _buildTextContent(isMobile),
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: _buildTextContent(isMobile)),
                const SizedBox(width: 80),
                Expanded(child: _buildImage()),
              ],
            ),
    );
  }

  Widget _buildTextContent(bool isMobile) {
    return Column(
      crossAxisAlignment: isMobile
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        const Text(
          'About Me',
          style: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 24),
        const Text(
          "Hi, I'm Omar Ayman — a passionate Flutter Developer with 5+ years of experience building high-performance mobile applications.\n\n"
          "I specialize in scalable architecture, clean code, and crafting seamless user experiences. My focus is not just shipping features — but building reliable, production-ready systems that scale.\n\n"
          "From idea to deployment, I build digital products that perform, evolve, and deliver real business value.",
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 18, height: 1.6, color: Colors.white70),
        ),
        const SizedBox(height: 32),
        Wrap(
          spacing: 16,
          runSpacing: 12,
          children: const [
            _SkillChip(label: "Flutter"),
            _SkillChip(label: "Clean Architecture"),
            _SkillChip(label: "Firebase"),
            _SkillChip(label: "REST APIs"),
            _SkillChip(label: "State Management"),
            _SkillChip(label: "Performance Optimization"),
          ],
        ),
      ],
    );
  }

  Widget _buildImage() {
    return Center(
      child: Container(
        height: 320,
        width: 320,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [Color(0xFF448AFF), Color(0xFF00E5FF)],
          ),
        ),
        padding: const EdgeInsets.all(4),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CachedNetworkImage(
            imageUrl:
                'https://res.cloudinary.com/dqxck6aff/image/upload/v1771625863/pro_pic_light_1_cfakbw.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

class _SkillChip extends StatelessWidget {
  final String label;

  const _SkillChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E2A),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: const Color(0xFF448AFF)),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
