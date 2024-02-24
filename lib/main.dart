import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app/layout/layout_view.dart';
import 'package:islami_app/moduls/hadeth/page/hadeth_Details_view.dart';
import 'package:islami_app/moduls/quran/page/Quran_details_view.dart';
import 'package:islami_app/moduls/splash/page/splas_view.dart';

import 'config/application_theam_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      theme: ApplactonTheamManager.lightTheam,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      title: "islami app",
      initialRoute: SplashView.routName,
      routes: {
        SplashView.routName: (context) => const SplashView(),
        LayoutView.routName: (context) => const LayoutView(),
        QuranDetailsView.routName: (context) => QuranDetailsView(),
        hadethDetailsView.routName: (context) => hadethDetailsView(),
      },
    );
  }
}
