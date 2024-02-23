import 'package:flutter/material.dart';

class TasbehView extends StatefulWidget {
  const TasbehView({super.key});

  @override
  State<TasbehView> createState() => _TasbehViewState();
}

class _TasbehViewState extends State<TasbehView> {
  int counter = 0;
  int index = 0;
  double angle = 0;
  List<String> tasbehList = [
    "سبحان الله",
    "الحمد لله",
    "لا اله الا الله",
    "الله اكبر"
  ];

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(top: mediaQuery.height * 0.07),
                child: Transform.rotate(
                    angle: angle,
                    child: Image.asset("assets/images/body of seb7a.png")),
              ),
              Image.asset("assets/images/head of seb7a.png"),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "عدد التسبيحات",
            style: TextStyle(
                fontFamily: "El Meseiri",
                fontSize: 25,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: Color(0xffB7935F),
            ),
            child: Text(
              "$counter",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          InkWell(
            onTap: () {
              tasbeh();
            },
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: Color(0xffB7935F),
              ),
              child: Text(
                tasbehList[index],
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
              ),
            ),
          )
        ],
      ),
    );
  }

  void tasbeh() {
    if (counter < 33) {
      angle += 1;
      counter++;
    } else {
      if (index < 3) {
        index++;
        counter = 0;
      } else {
        index = 0;
        counter = 0;
      }
    }
    setState(() {});
  }
}
