
import 'package:flutter/material.dart';
import 'package:porofolio/domain/entity/project.dart';
import 'package:porofolio/presentation/features/projects/widgets/project_card.dart';

import '../../../app/projects.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 80.0),
      child: Column(
        children: [
          const Text(
            'Selected Projects',
            style: TextStyle(
                fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 20),
          const Text(
            'A selection of mobile applications I’ve built across different industries.',
            style: TextStyle(fontSize: 18, color: Colors.white70),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 50),
          Column(
            children: projects.map((p) => Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: ProjectCard(project: p),
            )).toList(),
          ),
        ],
      ),
    );
  }
}
