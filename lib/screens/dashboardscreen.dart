import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;

    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {
        return (Scaffold(
          body: Row(
            children: [
              Container(
                height: screen.height,
                width: screen.width * .2,
                color: Colors.grey,
                child: Text("Di Makaya Sir Kulang oras"),
              ),
              Container(
                height: screen.height,
                width: screen.width * .8,
                color: Colors.white,
              )
            ],
          ),
        ));
      } else {
        return (Scaffold(
          body: Container(color: Colors.red),
        ));
      }
    });
  }
}
