import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/widget/sight_card_visited.dart';

class VisitedScreen extends StatefulWidget {
  const VisitedScreen({Key? key}) : super(key: key);

  @override
  State<VisitedScreen> createState() => _VisitedScreenState();
}

class _VisitedScreenState extends State<VisitedScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 22, 16, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SightCardVisited(
            mocks[2],
          ),
        ],
      ),
    );
  }
}
