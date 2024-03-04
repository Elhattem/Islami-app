import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/config/settings_provider.dart';
import 'package:islami_app/layout/layout_view.dart';
import 'package:islami_app/moduls/hadeth/page/hadeth_Details_view.dart';
import 'package:islami_app/moduls/quran/page/Quran_details_view.dart';
import 'package:islami_app/moduls/splash/page/splas_view.dart';
import 'package:provider/provider.dart';

import 'config/application_theam_manager.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SettingProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingProvider>(context);
    return MaterialApp(
      themeMode: vm.currentThemeMode,
      debugShowCheckedModeBanner: false,
      theme: ApplactonTheamManager.lightTheam,
      darkTheme: ApplactonTheamManager.darkTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      title: "islami app",
      locale: Locale(vm.currentLanguage),
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
