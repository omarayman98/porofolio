import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:porofolio/domain/entity/project.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatefulWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool _isHovered = false;
  bool _isExpanded = false;

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform: _isHovered ? (Matrix4.identity()..scale(1.07)) : Matrix4.identity(),
        child: Card(
          elevation: _isHovered ? 16 : 4,
          shadowColor: Colors.black.withOpacity(0.5),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: AnimatedSize(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildCollapsedHeader(textTheme),
                  if (_isExpanded) _buildExpandedContent(textTheme),
                  const SizedBox(height: 24),
                  _buildExpansionButton(theme),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCollapsedHeader(TextTheme textTheme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (widget.project.projectIconUrl != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: CachedNetworkImage(
                  imageUrl: widget.project.projectIconUrl!,
                  width: 40,
                  height: 40,
                  placeholder: (context, url) => const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(widget.project.name, style: textTheme.titleLarge),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(widget.project.shortDescription, style: textTheme.bodyMedium),
        const SizedBox(height: 16),
        Row(
          children: [
            if (widget.project.appStoreUrl != null &&
                widget.project.appStoreUrl!.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: InkWell(
                  onTap: () => _launchUrl(widget.project.appStoreUrl!),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/icons/app-store-logo.webp',
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            if (widget.project.googlePlayUrl != null &&
                widget.project.googlePlayUrl!.isNotEmpty)
              InkWell(
                onTap: () => _launchUrl(widget.project.googlePlayUrl!),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/icons/play-store.jpg',
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Chip(
              label: Text(widget.project.industryTag),
              backgroundColor: Theme.of(context).colorScheme.secondary,
            ),
          ],
        ),
        const SizedBox(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: widget.project.techStack
                .map((tech) => Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Chip(label: Text(tech)),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildExpansionButton(ThemeData theme) {
    return Align(
      alignment: Alignment.centerRight,
      child: OutlinedButton(
        onPressed: () => setState(() => _isExpanded = !_isExpanded),
        style: OutlinedButton.styleFrom(
          foregroundColor: theme.colorScheme.secondary,
          side: BorderSide(color: theme.colorScheme.secondary),
        ),
        child: Text(_isExpanded ? 'Show Less' : 'View Case Study'),
      ),
    );
  }

  Widget _buildExpandedContent(TextTheme textTheme) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSection("Overview", [widget.project.overview], textTheme),
          _buildSection("Core Features", widget.project.features, textTheme),
          _buildTechnicalDetailsSection(textTheme),
          _buildSection("My Role", widget.project.myRole, textTheme),
          if (widget.project.challenges != null &&
              widget.project.challenges!.isNotEmpty)
            _buildSection(
                "Challenges & Solutions", widget.project.challenges!, textTheme),
          if (widget.project.screenshots.isNotEmpty)
            _buildScreenshotsSection(textTheme),
        ],
      ),
    );
  }

  Widget _buildSection(String title, List<String> content, TextTheme textTheme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        ...content.map((item) => Padding(
              padding: const EdgeInsets.only(bottom: 8.0, left: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("• "),
                  Expanded(child: Text(item, style: textTheme.bodyMedium)),
                ],
              ),
            )),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _buildTechnicalDetailsSection(TextTheme textTheme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Technical Implementation", style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        ...widget.project.technicalDetails.entries.map((entry) => Padding(
              padding: const EdgeInsets.only(bottom: 8.0, left: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${entry.key}: ", style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold)),
                  Expanded(child: Text(entry.value, style: textTheme.bodyMedium)),
                ],
              ),
            )),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _buildScreenshotsSection(TextTheme textTheme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Screenshots", style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.project.screenshots.length,
            itemBuilder: (context, index) {
              final screenshot = widget.project.screenshots[index];
              return Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: CachedNetworkImage(
                    imageUrl: screenshot,
                    fit: BoxFit.cover,
                    placeholder: (context, url) =>
                        const Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error, size: 40),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
