import 'package:app/presentation/careers/careers.dart';
import 'package:app/presentation/chat/chat.dart';
import 'package:app/presentation/landing_page_screen/landing_page_screen.dart';
import 'package:app/presentation/landing_page_screen/binding/landing_page_binding.dart';
import 'package:app/presentation/language_page_screen/language_page_screen.dart';
import 'package:app/presentation/language_page_screen/binding/language_page_binding.dart';
import 'package:app/presentation/login_page_screen/login_page_screen.dart';
// import 'package:app/presentation/login_page_screen/binding/login_page_binding.dart';
import 'package:app/presentation/home_page_screen/home_page_screen.dart';
import 'package:app/presentation/home_page_screen/binding/home_page_binding.dart';
import 'package:app/presentation/profile_screen/profile_screen.dart';
import 'package:app/presentation/profile_screen/binding/profile_binding.dart';
import 'package:app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:app/presentation/scholarships/scholarships.dart';
import 'package:app/presentation/study/study_page.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String landingPageScreen = '/landing_page_screen';

  static String languagePageScreen = '/language_page_screen';

  static String loginPageScreen = '/login_page_screen';

  static String homePageScreen = '/home_page_screen';

  static String profileScreen = '/profile_screen';

  static String scholarships = '/scholarship';

  static String study = '/study';

  static String careers = '/careers';

  static String chat = '/chat';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: landingPageScreen,
      page: () => LandingPageScreen(),
      bindings: [
        LandingPageBinding(),
      ],
    ),
    GetPage(
      name: languagePageScreen,
      page: () => LanguagePageScreen(),
      bindings: [
        LanguagePageBinding(),
      ],
    ),
    GetPage(
      name: chat,
      page: () => ChatPage(),
      bindings: [
        LanguagePageBinding(),
      ],
    ),
    GetPage(
      name: study,
      page: () => StudyPage(),
      bindings: [
        LanguagePageBinding(),
      ],
    ),
    GetPage(
      name: careers,
      page: () => CareersPage(),
      bindings: [
        LanguagePageBinding(),
      ],
    ),
    GetPage(
      name: scholarships,
      page: () => Scholarship(),
      bindings: [
        LanguagePageBinding(),
      ],
    ),
    // GetPage(
    //   // name: loginPageScreen,
    //   // page: () => LoginPageScreen(),
    //   // bindings: [
    //   //   LoginPageBinding(),
    //   // ],
    // ),
    GetPage(
      name: homePageScreen,
      page: () => HomePageScreen(),
      bindings: [
        HomePageBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LandingPageScreen(),
      bindings: [
        LandingPageBinding(),
      ],
    )
  ];
}
