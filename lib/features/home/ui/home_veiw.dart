import 'package:doc_appointments_app/core/theming/styls.dart';
import 'package:flutter/material.dart';
import 'package:retrofit/retrofit.dart';

class HomeVeiw extends StatelessWidget {
  const HomeVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Home Screen")),
        body: Center(
          child: Text(
            "this is home Screen!!",
            style: FontStyls.font24mainBlueBold(),
          ),
        ),
      ),
    );
  }
}
