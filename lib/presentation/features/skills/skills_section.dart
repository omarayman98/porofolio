import 'package:flutter/material.dart';
import 'package:porofolio/presentation/features/skills/widgets/skill_card.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      const EdgeInsets.symmetric(horizontal: 40.0, vertical: 100.0),
      child: Column(
        children: const [
          Text(
            'My Skills',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Technologies and tools I use to build scalable, high-performance applications.',
            style: TextStyle(fontSize: 18, color: Colors.white70),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 60),
          _SkillsGrid(),
        ],
      ),
    );
  }
}

class _SkillsGrid extends StatelessWidget {
  const _SkillsGrid();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 40,
      runSpacing: 40,
      alignment: WrapAlignment.center,
      children: const [
        // 🔵 Mobile Core
        SkillCard(
          skill: 'Flutter',
          percentage: 0.95,
          icon: Icons.flutter_dash,
        ),
        SkillCard(
          skill: 'Dart',
          percentage: 0.92,
          icon: Icons.code,
        ),
        SkillCard(
          skill: 'Android (Java/Kotlin)',
          percentage: 0.85,
          icon: Icons.android,
        ),
        SkillCard(
          skill: 'Responsive UI',
          percentage: 0.90,
          icon: Icons.phone_iphone,
        ),

        // 🟣 Architecture
        SkillCard(
          skill: 'Clean Architecture',
          percentage: 0.90,
          icon: Icons.architecture,
        ),
        SkillCard(
          skill: 'SOLID Principles',
          percentage: 0.88,
          icon: Icons.account_tree,
        ),
        SkillCard(
          skill: 'Bloc / Cubit',
          percentage: 0.91,
          icon: Icons.sync_alt,
        ),
        SkillCard(
          skill: 'Riverpod',
          percentage: 0.80,
          icon: Icons.layers,
        ),

        // 🔥 Backend & Cloud
        SkillCard(
          skill: 'Firebase',
          percentage: 0.87,
          icon: Icons.local_fire_department,
        ),
        SkillCard(
          skill: 'REST APIs',
          percentage: 0.90,
          icon: Icons.api,
        ),
        SkillCard(
          skill: 'Authentication & JWT',
          percentage: 0.85,
          icon: Icons.lock,
        ),
        SkillCard(
          skill: 'Push Notifications',
          percentage: 0.88,
          icon: Icons.notifications,
        ),

        // ⚙️ Dev Tools
        SkillCard(
          skill: 'Git & GitHub',
          percentage: 0.93,
          icon: Icons.merge_type,
        ),
        SkillCard(
          skill: 'CI/CD',
          percentage: 0.80,
          icon: Icons.settings,
        ),
        SkillCard(
          skill: 'App Store Deployment',
          percentage: 0.90,
          icon: Icons.cloud_upload,
        ),
        SkillCard(
          skill: 'Performance Optimization',
          percentage: 0.89,
          icon: Icons.speed,
        ),

        // 🧪 Testing
        SkillCard(
          skill: 'Unit Testing',
          percentage: 0.82,
          icon: Icons.check_circle,
        ),
        SkillCard(
          skill: 'Widget Testing',
          percentage: 0.78,
          icon: Icons.bug_report,
        ),

        // 🧠 Engineering
        SkillCard(
          skill: 'Problem Solving',
          percentage: 0.95,
          icon: Icons.psychology,
        ),
        SkillCard(
          skill: 'System Design Thinking',
          percentage: 0.85,
          icon: Icons.schema,
        ),
      ],
    );
  }
}
