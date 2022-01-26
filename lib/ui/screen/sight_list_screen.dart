import 'package:flutter/material.dart';
import 'package:places/domain/AppStrings.dart';

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
        elevation: 0,
        toolbarHeight: 452,
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        centerTitle: false,
        title: Container(
          padding: EdgeInsets.fromLTRB(16, 20, 16, 322),
          child: const Text(AppStrings.appTitle,
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
