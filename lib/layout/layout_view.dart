import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/moduls/hadeth/page/hadeth_view.dart';
import 'package:islami_app/moduls/quran/page/quran_view.dart';
import 'package:islami_app/moduls/radio/page/radio_view.dart';
import 'package:islami_app/moduls/setting/page/setting_view.dart';
import 'package:islami_app/moduls/tasbeh/page/tasbeh_view.dart';
import 'package:provider/provider.dart';

import '../config/settings_provider.dart';

class LayoutView extends StatefulWidget {
  static const String routName = 'layout';

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentIndex = 0;
  List<Widget> Screens = [
    QuranView(),
    hadethView(),
    radioView(),
    TasbehView(),
    settingView(),
  ];

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingProvider>(context);
    var lang = AppLocalizations.of(context)!;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(vm.getBackGround()), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(lang.islami),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/quran_icon.png"),
                  ),
                  label: lang.quran),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/hadeth_icon.png"),
                  ),
                  label: lang.hadeth),
              BottomNavigationBarItem(
                  icon: const ImageIcon(
                    AssetImage("assets/images/radio_blue.png"),
                  ),
                  label: lang.radio),
              BottomNavigationBarItem(
                  icon: const ImageIcon(
                    AssetImage("assets/images/sebha.png"),
                  ),
                  label: lang.tasbeh),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: lang.setting),
            ]),
        body: Screens[currentIndex],
      ),
    );
  }
}
