import 'package:flutter/material.dart';
import 'package:places/domain/app_string.dart';
import 'package:places/ui/widget/bottom_navigation_bar.dart';
import 'package:places/ui/widget/visited_body.dart';
import 'package:places/ui/widget/want_visited_body.dart';

class VisitingScreen extends StatelessWidget {
  static const List<String> _tabs = [
    AppStrings.mustVisited,
    AppStrings.visited,
  ];

  const VisitingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            AppStrings.favorite,
            style: TextStyle(
              color: Color(0xFF252849),
              fontFamily: 'Roboto',
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 52),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: const Color(0xfff5f5f5),
              ),
              child: TabBar(
                indicator: BoxDecoration(
                  color: const Color(0xFF3B3E5B),
                  borderRadius: BorderRadius.circular(40),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: const Color(0xFF7C7E92),
                tabs: List<Tab>.from(
                  _tabs.map((t) => Tab(child: Text(t))).toList(),
                ),
              ),
            ),
          ),
        ),
        body: const TabBarView(children: [
          WantVisitedScreen(),
          VisitedScreen(),
        ]),
        bottomNavigationBar: const BottomNavibar(),
      ),
    );
  }
}
