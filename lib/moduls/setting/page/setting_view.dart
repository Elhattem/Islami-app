import 'package:flutter/material.dart';

class settingView extends StatelessWidget {
  const settingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("setting page",
            style: TextStyle(fontSize: 40, fontFamily: "El Meseiri")),
      ),
    );
  }
}
