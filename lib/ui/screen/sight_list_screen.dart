import 'package:flutter/material.dart';
import 'package:places/domain/AppStrings.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/sight_card.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          children: [
            SightCard(mocks[0]),
            SizedBox(
              height: 16,
            ),
            SightCard(mocks[1]),
            SizedBox(
              height: 16,
            ),
            SightCard(mocks[2]),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 120,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Container(
          padding: EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: const Text(
            AppStrings.appTitle,
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
