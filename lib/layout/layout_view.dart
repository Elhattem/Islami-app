import 'package:flutter/material.dart';
import 'package:islami_app/moduls/hadeth/page/hadeth_view.dart';
import 'package:islami_app/moduls/quran/page/quran_view.dart';
import 'package:islami_app/moduls/radio/page/radio_view.dart';
import 'package:islami_app/moduls/setting/page/setting_view.dart';
import 'package:islami_app/moduls/tasbeh/page/tasbeh_view.dart';

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
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main_background.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "إسلامي",
          ),
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
                  label: "Quran"),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/hadeth_icon.png"),
                  ),
                  label: "Hadeth"),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/radio_blue.png"),
                  ),
                  label: "Radio"),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/sebha.png"),
                  ),
                  label: "Tasbeh"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings"),
            ]),
        body: Screens[currentIndex],
      ),
    );
  }
}
