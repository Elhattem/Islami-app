import 'package:flutter/material.dart';
import 'package:islami_app/moduls/hadeth/page/hadeth_view.dart';

class hadethDetailsView extends StatelessWidget {
  static const routName = "hadethDetails";

  const hadethDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var args = ModalRoute.of(context)?.settings.arguments as HadethDetailsData;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main_background.png"),
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
              color: const Color(0xFFF8F8F8).withOpacity(0.8),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Text("${args.titel}",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "El Meseiri",
                      fontSize: 30,
                      fontWeight: FontWeight.normal)),
              const Divider(thickness: 3, endIndent: 30, indent: 30),
              Text(args.content,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "El Meseiri",
                      fontSize: 22,
                      fontWeight: FontWeight.normal))
            ],
          ),
        ),
      ),
    );
  }
}
