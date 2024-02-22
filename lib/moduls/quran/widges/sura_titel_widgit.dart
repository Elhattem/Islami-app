import 'package:flutter/material.dart';

class SuraTitelWidgit extends StatelessWidget {
  final String suraName;
  final String suraNumber;

  const SuraTitelWidgit(
      {super.key, required this.suraName, required this.suraNumber});

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(
            suraNumber,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: "El Meseiri",
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          height: 38,
          width: 2,
          color: theme.primaryColor,
        ),
        Expanded(
          child: Text(
            suraName,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: "El Meseiri",
              fontSize: 23,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
