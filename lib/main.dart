import 'package:flutter/material.dart';
import 'package:islami_app/layout/layout_view.dart';
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
      title: "islami app",
      initialRoute: SplashView.routName,
      routes: {
        SplashView.routName: (context) => const SplashView(),
        LayoutView.routName: (context) => const LayoutView(),
      },
    );
  }
}
