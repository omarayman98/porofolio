
class Project {
  final String name;
  final String? projectIconUrl;
  final String shortDescription;
  final String overview;
  final String industryTag;
  final List<String> platforms;
  final List<String> techStack;
  final List<String> features;
  final Map<String, String> technicalDetails;
  final List<String> myRole;
  final List<String>? challenges;
  final List<String> screenshots;
  final String? videoUrl;
  final String? googlePlayUrl;
  final String? appStoreUrl;

  Project({
    required this.name,
    required this.shortDescription,
    required this.overview,
    required this.industryTag,
    required this.platforms,
    required this.techStack,
    required this.features,
    required this.technicalDetails,
    required this.myRole,
    this.challenges,
    required this.screenshots,
    this.projectIconUrl,
    this.videoUrl,
    this.googlePlayUrl,
    this.appStoreUrl,
  });
}
