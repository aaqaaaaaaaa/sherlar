import 'package:flutter/material.dart';
import 'package:sherlar/pages/categories/presentation/pages/categories_page.dart';
import 'package:sherlar/pages/home/presentation/pages/home_page.dart';
import 'package:sherlar/pages/story/presentation/pages/story_page.dart';
import 'package:sherlar/pages/writer_info/presentation/pages/writer_info_page.dart';

class Routes {
  static const homePage = '/';
  static const writerInfo = '/writerInfo';
  static const categoriesPage = '/categoriesPage';
  static const storyPage = '/storyPage';

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
        case categoriesPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const CategoriesPage(),
          );
        case storyPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => StoryPage(
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
