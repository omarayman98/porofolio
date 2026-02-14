import 'package:flutter/material.dart';
import 'package:porofolio/presentation/features/about/about_section.dart';
import 'package:porofolio/presentation/features/contact/contact_section.dart';
import 'package:porofolio/presentation/features/experience/experience_section.dart';
import 'package:porofolio/presentation/features/home/widgets/hero_section.dart';
import 'package:porofolio/presentation/features/projects/projects_section.dart';
import 'package:porofolio/presentation/features/services/services_section.dart';
import 'package:porofolio/presentation/features/skills/skills_section.dart';
import 'package:porofolio/presentation/features/testimonials/testimonials_section.dart';
import 'package:porofolio/presentation/utils/responsive.dart';
import 'package:porofolio/presentation/widgets/footer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final contactKey = GlobalKey();
  final projectsKey = GlobalKey();

  void scrollToContact() {
    Scrollable.ensureVisible(
      contactKey.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void scrollToProjects() {
    Scrollable.ensureVisible(
      projectsKey.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF1E1E2F), Color(0xFF121212)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Responsive(
                  mobile: HeroSection(
                    onContactMeTap: scrollToContact,
                    onViewMyWorkTap: scrollToProjects,
                  ), // We will create responsive versions later
                  tablet: HeroSection(
                    onContactMeTap: scrollToContact,
                    onViewMyWorkTap: scrollToProjects,
                  ),
                  desktop: HeroSection(
                    onContactMeTap: scrollToContact,
                    onViewMyWorkTap: scrollToProjects,
                  ),
                ),
                AboutSection(),
                SkillsSection(),
                ExperienceSection(),
                ProjectsSection(key: projectsKey),
                ServicesSection(),
                SizedBox(height: 40,),
                // TestimonialsSection(),
                ContactSection(key: contactKey),
                // const Footer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PremiumContactItem extends StatelessWidget {
  final String? imagePath;
  final IconData? icon;
  final String label;
  final String url;

  const PremiumContactItem({
    super.key,
    this.imagePath,
    this.icon,
    required this.label,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (imagePath != null)
            Image.asset(imagePath!, width: 25, height: 25)
          else
            Icon(icon, size: 20, color: Colors.white),
          const SizedBox(width: 8),
          Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
