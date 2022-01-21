import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 452,
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        centerTitle: false,
        title: Container(
          padding: EdgeInsets.fromLTRB(16, 40, 16, 322),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "С",
                  style: TextStyle(color: Color(0xff4CAF50)),
                ),
                TextSpan(
                  text: "писок",
                ),
                TextSpan(
                  text: "\nи",
                  style: TextStyle(
                    color: Color(0xfffcdd3d),
                  ),
                ),
                TextSpan(
                  text: 'нтересных мест',
                ),
              ],
              style: TextStyle(
                color: Color(0xff252849),
                fontWeight: FontWeight.bold,
                fontSize: 32,
                fontFamily: 'Roboto',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
