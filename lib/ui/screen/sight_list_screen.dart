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
          child: Text(
            'Список\nинтересных мест',
            style: TextStyle(
                color: Color(0xFF252849),
                fontSize: 32,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
