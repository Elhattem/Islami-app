import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/layout/layout_view.dart';
import 'package:provider/provider.dart';

import '../../../config/settings_provider.dart';

class SplashView extends StatefulWidget {
  static const String routName = '/';

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(const Duration(seconds: 1), () {
      Navigator.popAndPushNamed(context, LayoutView.routName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingProvider>(context);
    Size mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      body: Image.asset(
        vm.currentThemeMode == ThemeMode.dark
            ? "assets/images/splash_dark_background.png"
            : "assets/images/splash_background.png",
        height: mediaQuery.height,
        width: mediaQuery.width,
        fit: BoxFit.cover,
      ),
    );
  }
}
