import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/widget/sight_card_want_visited.dart';

class WantVisitedScreen extends StatefulWidget {
  const WantVisitedScreen({Key? key}) : super(key: key);

  @override
  State<WantVisitedScreen> createState() => _WantVisitedScreen();
}

class _WantVisitedScreen extends State<WantVisitedScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 22, 16, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SightCardWantVisited(
            mocks[1],
          ),
        ],
      ),
    );
  }
}
