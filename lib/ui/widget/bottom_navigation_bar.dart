import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavibar extends StatelessWidget {
  const BottomNavibar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: const Color(0xFF7C7E92).withOpacity(0.56), width: 0.8,),
        ),
      ),
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset('res/svg/List.svg'),
            label: 'none',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('res/svg/Map.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('res/svg/HeartFull.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('res/svg/Settings.svg'),
            label: 'Home',
          ),
        ],
      ),
    );
  }
}
