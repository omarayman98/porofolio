
import 'package:flutter/material.dart';
import 'package:porofolio/presentation/features/projects/widgets/project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 80.0),
      child: Column(
        children: [
          const Text(
            'My Projects',
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 50),
          Wrap(
            spacing: 40,
            runSpacing: 40,
            alignment: WrapAlignment.center,
            children: const [
              ProjectCard(
                title: 'Project One',
                description: 'A description of the project goes here. It should be concise and impactful.',
                imageUrl: 'https://via.placeholder.com/400x300',
              ),
              ProjectCard(
                title: 'Project Two',
                description: 'A description of the project goes here. It should be concise and impactful.',
                imageUrl: 'https://via.placeholder.com/400x300',
              ),
               ProjectCard(
                title: 'Project Three',
                description: 'A description of the project goes here. It should be concise and impactful.',
                imageUrl: 'https://via.placeholder.com/400x300',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
