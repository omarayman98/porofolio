import 'package:flutter/material.dart';
import 'package:porofolio/presentation/features/experience/widgets/experience_entry.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 100.0),
      color: const Color(0xFF121212),
      child: Column(
        children: const [
          Text(
            'Professional Experience',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'My journey building scalable and high-performance mobile applications.',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white70,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 70),

          /// 🔵 WeCodeForYou
          ExperienceEntry(
            title: 'Mobile Applications Developer',
            company: 'WeCodeForYou.io — London',
            duration: 'Mar 2022 - Present',
            description:
            '• Developing & maintaining 6+ production mobile apps (iOS & Android)\n'
                '• Reduced deployment cycle to 5 minutes using CI/CD pipelines\n'
                '• Worked on 300+ user stories in agile environment\n'
                '• Improved app stability by implementing unit & integration testing\n'
                '• Optimized performance and reduced bug ratio significantly\n'
                '• Designed scalable architectures using Clean Architecture & SOLID principles',
          ),

          /// 🟣 SortP
          ExperienceEntry(
            title: 'Mobile Applications Developer (Part-Time)',
            company: 'SortP — Remote',
            duration: 'Feb 2023 - Feb 2025',
            description:
            '• Developed & maintained 2 cross-platform mobile applications\n'
                '• Collaborated with cross-functional teams to ship new features\n'
                '• Integrated REST APIs & external data sources\n'
                '• Performed performance tuning & advanced bug fixing\n'
                '• Implemented testing strategies to ensure reliability & responsiveness',
          ),

          /// 🟢 Audiohat
          ExperienceEntry(
            title: 'Android Developer (Part-Time)',
            company: 'Audiohat — Saudi Arabia',
            duration: 'Aug 2023 - Nov 2023',
            description:
            '• Developed new core features for Audiohat mobile app\n'
                '• Improved application security and performance\n'
                '• Integrated APIs and optimized data handling\n'
                '• Enhanced app responsiveness and reduced crash rate',
          ),

          /// 🟡 TransGlobal
          ExperienceEntry(
            title: 'Android Developer',
            company: 'TransGlobal Co — Nasr City',
            duration: 'Jun 2021 - Feb 2022',
            description:
            '• Developed and maintained 2 mobile applications\n'
                '• Collaborated in Agile development cycles\n'
                '• Implemented MVVM architecture with Kotlin\n'
                '• Integrated REST APIs & improved app stability\n'
                '• Focused on performance optimization & clean code practices',
          ),
        ],
      ),
    );
  }
}
