import 'package:flutter/material.dart';
import 'package:islami_app/moduls/hadeth/page/hadeth_view.dart';
import 'package:provider/provider.dart';

import '../../../config/settings_provider.dart';

class hadethDetailsView extends StatelessWidget {
  static const routName = "hadethDetails";

  const hadethDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingProvider>(context);
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var args = ModalRoute.of(context)?.settings.arguments as HadethDetailsData;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(vm.getBackGround()), fit: BoxFit.cover)),
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
              Text(
                "${args.titel}",
                style: theme.textTheme.bodySmall,
              ),
              const Divider(thickness: 3, endIndent: 30, indent: 30),
              Text(
                args.content,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
