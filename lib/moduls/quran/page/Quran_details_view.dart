import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/moduls/quran/page/quran_view.dart';
import 'package:provider/provider.dart';

import '../../../config/settings_provider.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routName = 'QuranDetails';

  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  List<String> versesList = [];

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingProvider>(context);
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsData;
    if (versesList.isEmpty) LoadData(args.SuraNumber);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                vm.getBackGround(),
              ),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("إسلامي"),
        ),
        body: Container(
          width: mediaQuery.width,
          height: mediaQuery.height,
          margin: const EdgeInsets.only(
            bottom: 25,
            left: 20,
            right: 20,
            top: 15,
          ),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: vm.isDark()
                  ? const Color(0xff141A2E).withOpacity(0.8)
                  : const Color(0xFFF8F8F8).withOpacity(0.8),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "سورة ${args.SuraName}",
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.play_circle_rounded,
                    size: 28,
                    color: vm.isDark() ? Color(0xffFACC1D) : Colors.black,
                  ),
                ],
              ),
              const Divider(thickness: 3, endIndent: 30, indent: 30),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    versesList[index],
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium,
                  ),
                  itemCount: versesList.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> LoadData(String filename) async {
    String content = await rootBundle.loadString("assets/files/$filename.txt");
    versesList = content.split("\n");
    setState(() {});
    print(versesList.length);
  }
}
