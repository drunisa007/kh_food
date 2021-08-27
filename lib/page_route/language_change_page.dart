
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_project/components/show_model_bottom_sheet.dart';
import 'package:template_project/provider/language_provider.dart';

class LanguageChangePage extends StatelessWidget {


  static const id = "LanguageChangePage";

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageProvider>(
      builder: (BuildContext context, languageProvider, Widget? child) {
        return  Scaffold(
          appBar: AppBar(
            title: Text(tr('home')),
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                List<Locale> supportedLocales = context.supportedLocales;
                Locale currentLocale = context.locale;
               int currentIndex =  supportedLocales.indexOf(currentLocale);
               languageProvider.setLanguagePosition(currentIndex);
                showSheet(context, supportedLocales,currentLocale,context.setLocale,languageProvider);
              },
              child: Center(
                child: Text('Click Me To Know Something'),
              ),
            ),
          ),
        );
      },
    );
  }
}
