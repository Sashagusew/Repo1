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
    Size size = MediaQuery.of(context).size; //считывает размер устройства
    return SafeArea(
      //не залазиет на кнопки системы и верхнюю бровь
      child: Scaffold(
        body: PageView(
          //создание тик-тока
          controller: controller,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Container(
              color: Colors.redAccent,
              height: size.height,
              width: size.width,
              child: Center(
                child: Text(
                  "Привет!",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white70,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.greenAccent,
              height: size.height,
              width: size.width,
              child: Center(
                child: Text(
                  "Бегите глупцы",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.greenAccent,
              height: size.height,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Ratata",
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Ratata",
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
