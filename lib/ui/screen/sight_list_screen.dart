import 'package:flutter/material.dart';
import 'package:places/domain/app_string.dart';
import 'package:places/domain/app_typography.dart';
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
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 120,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Container(
          padding: const EdgeInsets.fromLTRB(0, 5, 16, 5),
          child: Text(
            AppStrings.appTitle,
            style: textText32Bold.copyWith(color: Theme.of(context).primaryColor),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,),
        child: ListView.builder(
        itemCount: mocks.length,
          itemBuilder: (context, index) {
              return SightCard(mocks[index]);
            },
        ),
      ),
    );
  }
}
