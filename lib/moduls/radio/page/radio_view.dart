import 'package:flutter/material.dart';

class radioView extends StatelessWidget {
  const radioView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: mediaQuery.height * 0.1),
              child: Image.asset("assets/images/radio-vector-png.png",
                  height: mediaQuery.height * 0.3, width: mediaQuery.width),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "إذاعة القرآن الكريم",
          style: TextStyle(
              fontFamily: "El Meseiri",
              fontSize: 25,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Spacer(flex: 5),
            Image.asset("assets/images/Icon metro-nextt.png"),
            Spacer(flex: 2),
            Image.asset("assets/images/Icon awesome-play.png"),
            Spacer(flex: 1),
            Image.asset("assets/images/Icon metro-next.png",
                width: mediaQuery.width * 0.2),
            Spacer(flex: 3),
          ],
        )
      ],
    );
  }
}
