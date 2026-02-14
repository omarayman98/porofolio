
import 'package:flutter/material.dart';

import 'dart:ui';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 768;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 80,
        vertical: 120,
      ),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF0D0D0D),
            Color(0xFF111111),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 24 : 60,
                  vertical: isMobile ? 40 : 70,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.1),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    /// Title
                    const Text(
                      "Let's Work Together",
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),

                    const Text(
                      "Have a project in mind or just want to say hello?\nFeel free to reach out.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                        height: 1.6,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 60),
                    Wrap(
                      spacing: 30,
                      runSpacing: 25,
                      alignment: WrapAlignment.center,
                      children: const [
                        PremiumContactItem(
                          imagePath: "assets/icons/whatsapp_logo.png",
                          label: "+201115578285",
                          url: "https://wa.me/201115578285",
                        ),
                        PremiumContactItem(
                          icon: Icons.email_outlined,
                          label: "omarayman.dev@gmail.com",
                          url: "mailto:omarayman.dev@gmail.com",
                        ),
                        PremiumContactItem(
                          imagePath: "assets/icons/linkedin_logo.png",
                          label: "LinkedIn Profile",
                          url: "https://linkedin.com/in/omarayman-dev",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class PremiumContactItem extends StatefulWidget {
  final IconData? icon;
  final String? imagePath;
  final String label;
  final String url;

  const PremiumContactItem({
    super.key,
    this.icon,
    this.imagePath,
    required this.label,
    required this.url,
  }) : assert(icon != null || imagePath != null, 'Either icon or imagePath must be provided.'),
       assert(icon == null || imagePath == null, 'Cannot provide both icon and imagePath.');

  @override
  State<PremiumContactItem> createState() => _PremiumContactItemState();
}

class _PremiumContactItemState extends State<PremiumContactItem> {
  bool _hovered = false;

  Future<void> _launch() async {
    final uri = Uri.parse(widget.url);
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: _launch,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOut,
          padding: const EdgeInsets.symmetric(
            horizontal: 28,
            vertical: 18,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: _hovered
                ? const LinearGradient(
              colors: [
                Color(0xFF4A00E0),
                Color(0xFF8E2DE2),
              ],
            )
                : null,
            border: Border.all(
              color: _hovered
                  ? Colors.transparent
                  : Colors.white24,
            ),
            boxShadow: _hovered
                ? [
              BoxShadow(
                color: const Color(0xFF8E2DE2).withOpacity(0.4),
                blurRadius: 20,
                spreadRadius: 2,
              )
            ]
                : [],
          ),
          transform: _hovered
              ? (Matrix4.identity()..scale(1.06))
              : Matrix4.identity(),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (widget.imagePath != null)
                Image.asset(
                  widget.imagePath!,
                  width: 24,
                  height: 24,
                )
              else
                Icon(
                  widget.icon!,
                  color: Colors.white,
                ),
              const SizedBox(width: 12),
              Text(
                widget.label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
