import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_project/page_route/post_page.dart';
import 'package:template_project/page_route/router.dart';
import 'package:template_project/provider/language_provider.dart';
import 'package:template_project/provider/post_pagination_provider.dart';
import 'package:template_project/provider/post_provider.dart';
import 'package:template_project/util/generate_material_color.dart';

 void main() async {
   print('working');
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  print('wokring');
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en', 'US'), Locale('zh', 'CN'),Locale('my', 'MM'),],
        path: 'resources/langs', // <-- change the path of the translation files,
        assetLoader: JsonAssetLoader(),
        fallbackLocale: Locale('en', 'US'),
        child:MyApp()
    ),
  );
}

class MyApp  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

   return  MultiProvider(
        providers:
        [
          ChangeNotifierProvider(create: (_)=> LanguageProvider()),
          ChangeNotifierProvider(create: (_)=> PostProvider()),
          ChangeNotifierProvider(create: (_)=> PostPaginationProvider())
        ], child: MaterialApp(
     title: 'Home',
     theme: ThemeData(
         accentColor: generateMaterialColor(Color(0xffFF8500)),
         primaryColor: generateMaterialColor(Color(0xff04D4F0)),
         scaffoldBackgroundColor: generateMaterialColor(Color(0xffE9E9E9)),
         appBarTheme:
         Theme.of(context).appBarTheme.copyWith(brightness: Brightness.dark),
         backgroundColor: Colors.white
     ),
     localizationsDelegates: context.localizationDelegates,
     supportedLocales: context.supportedLocales,
     locale: context.locale,
     onGenerateRoute: generateRoute,
     initialRoute: PostPage.id,
   ));
  }
}

