import 'package:flutter/material.dart';

class TimeLinePege extends StatefulWidget {
  TimeLinePege({Key key}) : super(key: key);

  @override
  _TimeLinePegeState createState() => _TimeLinePegeState();
}

class _TimeLinePegeState extends State<TimeLinePege> {
  PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: PageView(
          controller: controller,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [],
        ),
      ),
    );
  }
}
