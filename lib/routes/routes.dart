import 'package:flutter/material.dart';
import 'package:sherlar/pages/app_info/presentation/pages/app_info_page.dart';
import 'package:sherlar/pages/categories/presentation/pages/categories_page.dart';
import 'package:sherlar/pages/home/presentation/pages/home_page.dart';
import 'package:sherlar/pages/story/presentation/pages/story_page.dart';
import 'package:sherlar/pages/writer_info/presentation/pages/writer_info_page.dart';

class Routes {
  static const homePage = '/';
  static const writerInfo = '/writerInfo';
  static const appInfo = '/appInfo';
  static const categoriesPage = '/categoriesPage';
  static const storyPage = '/storyPage';
  static const sherlarPage = '/sherlarPage';

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    try {
      final Map<String, dynamic>? args =
          routeSettings.arguments as Map<String, dynamic>?;
      args ?? <String, dynamic>{};
      switch (routeSettings.name) {
        case homePage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const HomePage(),
          );
        case writerInfo:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const WriterInfoPage(),
          );
        case appInfo:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const AppInfoPage(),
          );
        case categoriesPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => CategoriesPage(
              contentList: args?['contentList'],
              contentHikoyaList: args?['contentHikoyaList'],
              isHikoya: args?['isHikoya'],
            ),
          );
        case storyPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => StoryPage(
              contentModel: args?['contentModel'],
            ),
          );
        case sherlarPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => SherlarPage(
              contentModel: args?['content'],
            ),
          );

        default:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const HomePage(),
          );
      }
    } catch (e) {
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomePage(),
      );
    }
  }
}
