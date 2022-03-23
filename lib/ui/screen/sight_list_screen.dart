import 'package:flutter/material.dart';
import 'package:places/domain/app_string.dart';
import 'package:places/domain/sight.dart';
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16,),
        child: ListView.builder(
        itemCount: mocks.length,
          itemBuilder: (context, index) {
              return SightCard(mocks[index]);
            },
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 120,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Container(
          padding: EdgeInsets.fromLTRB(0, 5, 16, 5),
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
