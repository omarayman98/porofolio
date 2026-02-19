import '../domain/entity/project.dart';

final List<Project> projects = [

  Project(
    name: "Stars Club",
    shortDescription:
    "A digital loyalty and rewards ecosystem enabling users to manage points, explore brands, and track membership tiers.",
    overview:
    "Stars Club (by D-Squares) is a comprehensive loyalty platform that allows users to manage wallets, track expiring points, explore brand offers, and dynamically upgrade membership tiers. The app integrates a custom SDK and provides a smooth, bilingual experience.",
    industryTag: "Loyalty & Rewards",
    platforms: ["Android", "iOS"],
    techStack: [
      "Flutter",
      "BLoC",
      "Cubit",
      "GetX",
      "Firebase",
      "FCM",
      "Custom SDK"
    ],
    features: [
      "Wallet & tier management",
      "Dynamic membership ranking",
      "Brand discovery carousel",
      "OTP & Social Login",
      "Push notifications",
      "Arabic & English support",
      "Light & Dark mode"
    ],
    technicalDetails: {
      "State Management": "Bloc/Cubit + GetX",
      "Backend": "Firebase + D-Squares SDK",
      "Architecture": "Feature-based modular structure"
    },
    myRole: [
      "Implemented wallet & tier logic",
      "Integrated loyalty SDK",
      "Managed state using Bloc",
      "Handled localization & theming"
    ],
    screenshots: [
    ],
    videoUrl: null,
    googlePlayUrl: 'https://play.google.com/store/apps/details?id=com.wecodeforyou.starsgroup.sg2025',
    appStoreUrl: 'https:apps.apple.com/app/stars-club/id6756280558'
    ,
  ),

  Project(
      name: "Asdekaa Al Kalemah",
      shortDescription:
      "An interactive Arabic vocabulary learning app focused on synonym, antonym, and contextual usage testing.",
      overview:
      "Asdekaa Al Kalemah is an Arabic educational application designed to enhance vocabulary skills through interactive quizzes and real-time feedback animations.",
      industryTag: "EdTech",
      platforms: ["Android", "iOS"],
      techStack: [
        "Flutter",
        "Bloc",
        "GetX",
        "Firebase Auth",
        "Firestore",
        "Dio"
      ],
      features: [
        "Vocabulary self-testing",
        "Synonym & antonym quizzes",
        "Sentence example validation",
        "Lottie feedback animations",
        "Full RTL support"
      ],
      technicalDetails: {
        "State Management": "Bloc/Cubit",
        "Backend": "Firebase Auth & Firestore",
        "Networking": "Dio"
      },
      myRole: [
        "Developed testing module",
        "Integrated Firebase authentication",
        "Built RTL UI components"
      ],
      screenshots: [
      ],
      videoUrl: null,
      googlePlayUrl: 'https://play.google.com/store/apps/details?id=com.oa.asdekaa_elkalemah&pcampaignid=web_share',
      appStoreUrl: '️https://apps.apple.com/us/app/asdekaa-elkalemah/id6754461183',
  ),

  Project(
    name: "Outfitters",
    shortDescription:
    "A full-scale social shopping ecosystem blending Instagram-style engagement with end-to-end e-commerce functionality.",
    overview:
    "Outfitters is a social commerce platform combining social media interaction with complete e-commerce flow including cart, checkout, and order tracking.",
    industryTag: "Social Media platform with  ECommerce",
    platforms: ["Android", "iOS"],
    techStack: [
      "Flutter",
      "BLoC",
      "WebSockets",
      "Firebase",
      "Google Maps",
      "Secure Storage"
    ],
    features: [
      "Multi-role user system",
      "Feed & Stories",
      "Real-time chat",
      "Product filtering",
      "Cart & checkout",
      "Deep linking"
    ],
    technicalDetails: {
      "State Management": "BLoC",
      "Realtime": "WebSockets",
      "Notifications": "Firebase Cloud Messaging"
    },
    myRole: [
      "Built social feed features",
      "Implemented WebSocket chat",
      "Integrated checkout flow",
      "Managed complex state flows"
    ],
    screenshots: [
      "assets/projects/outfitters1.png",
    ],
    videoUrl: null,
    googlePlayUrl: null,
    appStoreUrl: null,
  ),

  Project(
    name: "Hanan Mannan Masjed",
    shortDescription:
    "A digital companion app for mosque communities combining spiritual resources with administrative services.",
    overview:
    "A community-focused religious app providing Quran reading, prayer tools, event management, and facility booking features.",
    industryTag: "Community / Religious",
    platforms: ["Android", "iOS"],
    techStack: [
      "Flutter",
      "Firebase",
      "Deep Linking",
      "Clean Architecture"
    ],
    features: [
      "Digital Quran",
      "Prayer times & Qibla",
      "Hall booking",
      "Events & gallery",
      "Feedback system"
    ],
    technicalDetails: {
      "Architecture": "Clean architecture",
      "Backend": "Firebase",
      "Deep Linking": "Universal Links / App Links"
    },
    myRole: [
      "Developed booking workflow",
      "Integrated prayer time service",
      "Structured modular architecture"
    ],
    screenshots: [
    ],
    videoUrl: null,
    googlePlayUrl: 'https://play.google.com/store/apps/details?id=com.wcfy.hmmsq',
    appStoreUrl: 'https://apps.apple.com/eg/app/alhanan-almanan/id6754757241',
  ),

  Project(
    name: "Caveo",
    shortDescription:
    "A financial trading application supporting account management, analysis tools, and secure transactions.",
    overview:
    "Caveo is a native Android trading platform featuring KYC onboarding, trading tools, calculators, and financial transactions integration.",
    industryTag: "FinTech",
    platforms: ["Android"],
    techStack: [
      "Java",
      "Android SDK",
      "Firebase",
      "Biometric Auth",
      "REST APIs"
    ],
    features: [
      "Trading accounts",
      "KYC onboarding",
      "Risk & margin calculators",
      "Biometric authentication",
      "Copy trader module"
    ],
    technicalDetails: {
      "Architecture": "Native Android",
      "Security": "Biometric + KYC verification"
    },
    myRole: [
      "Implemented onboarding flow",
      "Integrated trading calculators",
      "Managed secure authentication"
    ],
    screenshots: [
    ],
    videoUrl: null,
    googlePlayUrl: 'https://play.google.com/store/apps/details?id=com.caveo.caveo',
    appStoreUrl: 'https://apps.apple.com/eg/app/caveo/id977268107',
  ),

  Project(
    name: "El-Diera",
    shortDescription:
    "A real-time classifieds marketplace for buying and selling across cities and categories.",
    overview:
    "El-Diera is a real-time marketplace application with ad management, negotiation system, and live messaging between buyers and sellers.",
    industryTag: "Marketplace",
    platforms: ["Android", "iOS"],
    techStack: [
      "Flutter",
      "Bloc",
      "WebSockets",
      "Firebase",
      "REST APIs"
    ],
    features: [
      "Ad creation & management",
      "Offer system",
      "Live messaging",
      "Online/offline tracking"
    ],
    technicalDetails: {
      "Realtime": "WebSockets",
      "Localization": "Arabic (ar_SA) & English"
    },
    myRole: [
      "Built chat module",
      "Implemented offer workflow",
      "Integrated WebSocket services"
    ],
    screenshots: [
    ],
    videoUrl: null,
    googlePlayUrl: null,
    appStoreUrl: null,
  ),
  Project(
    name: "Instaplay",
    shortDescription:
    "A multi-role sports and wellness platform connecting players, parents, coaches, and healthcare professionals.",
    overview:
    "Instaplay (formerly Darabny) is a comprehensive sports ecosystem that connects athletes, parents, coaches, doctors, and nutritionists in one unified booking and management platform. The app enables real-time scheduling, session tracking, and professional onboarding workflows.",
    industryTag: "Sports & Wellness",
    platforms: ["Android", "iOS"],
    techStack: [
      "Flutter",
      "BLoC",
      "GetX",
      "Firebase",
      "Social Login",
      "Hive",
      "Table Calendar"
    ],
    features: [
      "Multi-role dashboards (Players, Parents, Coaches, Doctors)",
      "Real-time booking & scheduling",
      "Coach onboarding system",
      "Session tracking",
      "Facility booking (fields & courts)",
      "Search & discovery module",
      "Arabic & English localization"
    ],
    technicalDetails: {
      "State Management": "Flutter BLoC",
      "Authentication": "Firebase + Social Login",
      "Architecture": "Modular feature-first structure",
      "Realtime": "Live slot booking system"
    },
    myRole: [
      "Implemented scheduling & booking logic",
      "Built multi-role state management",
      "Developed onboarding workflow for coaches",
      "Integrated Firebase authentication",
      "Structured scalable feature-based architecture"
    ],
    screenshots: [
    ],
    videoUrl: null,
    googlePlayUrl: null,
    appStoreUrl: null,
  ),

  Project(
    name: "SpireUp",
    projectIconUrl: 'https://drive.google.com/file/d/1kMFiAz_OKS9H7uRJkHx-Us6Heo7WGeGp/view?usp=sharing',
    shortDescription:
    "A community-driven self-development and career growth platform with gamification features.",
    overview:
    "SpireUp is a native Android social productivity platform offering goal tracking, gamification, community groups, and career mapping.",
    industryTag: "Social / Productivity",
    platforms: ["Android"],
    techStack: [
      "Java",
      "Kotlin",
      "MVVM",
      "Retrofit",
      "Firebase"
    ],
    features: [
      "Goal tracking",
      "Career path mapping",
      "Gamification & badges",
      "Social groups",
      "Video courses"
    ],
    technicalDetails: {
      "Architecture": "MVVM",
      "Networking": "Retrofit + Paging"
    },
    myRole: [
      "Developed core features",
      "Integrated Firebase services",
      "Implemented MVVM architecture"
    ],
    screenshots: [
    ],
    videoUrl: null,
    googlePlayUrl: 'https://play.google.com/store/apps/details?id=com.wecodeforyou.spirup',
    appStoreUrl: 'https://apps.apple.com/eg/app/spireup-connect-learn-track/id1617701979',
  ),

  Project(
    name: "Events App",
    shortDescription:
    "A comprehensive event discovery and participation platform with digital ticketing.",
    overview:
    "A feature-rich event management application offering event browsing, QR-based ticketing, networking, and push notifications.",
    industryTag: "Event Management",
    platforms: ["Android", "iOS"],
    techStack: [
      "Flutter",
      "Bloc",
      "Firebase",
      "Dio",
      "Secure Storage"
    ],
    features: [
      "Event discovery",
      "QR ticketing",
      "Speakers & sponsors",
      "Push notifications"
    ],
    technicalDetails: {
      "State Management": "BLoC",
      "Backend": "Firebase + REST APIs"
    },
    myRole: [
      "Built event modules",
      "Integrated QR system",
      "Implemented notifications"
    ],
    screenshots: [
    ],
    videoUrl: null,
    googlePlayUrl: 'https://play.google.com/store/apps/details?id=com.wcfy.events',
    appStoreUrl: null,
  ),

  Project(
    name: "People & Places",
    shortDescription:
    "A workspace discovery and service booking platform with integrated wallet functionality.",
    overview:
    "People & Places is a professional booking platform allowing users to explore workspaces, book services, and manage transactions via personal wallet.",
    industryTag: "Workspace / Booking",
    platforms: ["Android", "iOS"],
    techStack: [
      "Flutter",
      "BLoC",
      "Dio",
      "Firebase",
      "Secure Storage"
    ],
    features: [
      "Workspace discovery",
      "Booking & check-in",
      "Wallet management",
      "Activity logs",
      "Social login"
    ],
    technicalDetails: {
      "Architecture": "Feature-based structure",
      "Networking": "Dio"
    },
    myRole: [
      "Implemented booking logic",
      "Integrated wallet APIs",
      "Built authentication flow"
    ],
    screenshots: [
    ],
    videoUrl: null,
    googlePlayUrl: 'https://play.google.com/store/apps/details?id=com.wcfy.pp',
    appStoreUrl: null,
  ),

];
