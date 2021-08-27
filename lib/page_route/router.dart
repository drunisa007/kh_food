import 'package:flutter/material.dart';
import 'package:template_project/page_route/color_page.dart';
import 'package:template_project/page_route/language_change_page.dart';
import 'package:template_project/page_route/post_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LanguageChangePage.id:
      return MaterialPageRoute(builder: (context) => LanguageChangePage());
    case PostPage.id:
      return MaterialPageRoute(builder: (context) => PostPage());
    case ColorPage.id:
      return MaterialPageRoute(builder: (context) => ColorPage());
    default:
      return MaterialPageRoute(builder: (context) => PostPage());
  }
}

//Navigator.of(context).pushNamed(HomeMain.id);