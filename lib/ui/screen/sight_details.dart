import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:places/domain/app_string.dart';
import 'package:places/res/assets.dart';
import 'package:places/domain/sight.dart';
import 'package:flutter_svg/svg.dart';

class SightCardDetail extends StatelessWidget {
  final Sight sight;
  const SightCardDetail(this.sight, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 360),
        child: Stack(
          children: [
            Container(
              child: Image.network(
                  sight.url,
                fit: BoxFit.cover,
                height: 460,
              ),
            ),
            Positioned(
              top: 46,
              left: 16,
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: 4,
                  ),
                  child: Icon(Icons.arrow_back_ios, size: 14.0),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(
          top: 24,
          left: 16,
          right: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              sight.name,
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Roboto',
                color: Color(0xff3B3E5B),
                fontWeight: FontWeight.w700,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 2.0),
            Row(
              children: [
                Text(
                  sight.type,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 16.0),
                Text(AppStrings.appWorkTime,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.0),
            Text(
              sight.details,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1.2,
              ),
            ),
            SizedBox(height: 24.0),
            Center(
              child: Container(
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.green,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('res/svg/Union.svg'),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      AppStrings.appNavigate.toUpperCase(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 24.0, bottom: 8.0),
              width: double.infinity,
              height: 1.0,
              color: Colors.grey,
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.calendar_today,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 8.0),
                      Text(AppStrings.appBooking),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        AppStrings.appFavorite,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                          color: Color(0xff3B3E5B),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
