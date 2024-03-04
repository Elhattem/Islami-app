import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/moduls/hadeth/page/hadeth_Details_view.dart';

class hadethView extends StatefulWidget {
  hadethView({super.key});

  @override
  State<hadethView> createState() => _hadethViewState();
}

class _hadethViewState extends State<hadethView> {
  List<HadethDetailsData> allHadethData = [];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediQury = MediaQuery.of(context).size;
    if (allHadethData.isEmpty) LoadData();
    return Column(
      children: [
        Image.asset(
          "assets/images/hadeth_head.png",
          height: mediQury.height * 0.2,
        ),
        const Divider(
          thickness: 5,
        ),
        Text(
          "الأحاديث",
          style: theme.textTheme.bodyMedium,
        ),
        const Divider(
          thickness: 5,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(context, hadethDetailsView.routName,
                    arguments: allHadethData[index]);
              },
              child: Text(
                    allHadethData[index].titel,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium,
              ),
                ),
            itemCount: allHadethData.length,
          ),
        )
      ],
    );
  }

  Future<void> LoadData() async {
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> AllHadeth = content.split("#");
    for (int i = 0; i < AllHadeth.length; i++) {
      String singleHadeth = AllHadeth[i].trim();
      int titleLength = singleHadeth.indexOf("\n");
      String titel = singleHadeth.substring(0, titleLength);
      String content = singleHadeth.substring(titleLength + 1);
      HadethDetailsData hadethDetailsData = HadethDetailsData(content, titel);
      allHadethData.add(hadethDetailsData);
      setState(() {});
    }
  }
}

class HadethDetailsData {
  final String titel;
  final String content;

  HadethDetailsData(this.content, this.titel);
}
