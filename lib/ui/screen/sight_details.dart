import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:places/domain/app_colors.dart';
import 'package:places/domain/app_string.dart';
import 'package:places/domain/app_typography.dart';
import 'package:places/domain/sight.dart';

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
            Image.network(
              sight.url,
              fit: BoxFit.cover,
              height: 460,
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
              style: AppTypography.styleText24Bold.copyWith(
                color: Theme.of(context).primaryColor,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 2.0),
            Row(
              children: [
                Text(
                  sight.type,
                  style: AppTypography.styleText14Bold.copyWith(
                    color: AppColors.lmLigthGrey,
                  ),
                ),
                const SizedBox(width: 16.0),
                Text(
                  AppStrings.appWorkTime,
                  style: AppTypography.styleText14Normal.copyWith(
                    color: AppColors.lmLigthGrey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            Text(
              sight.details,
              style: AppTypography.styleText14Normal.copyWith(
                color: Theme.of(context).primaryColor,
                height: 1.2,
              ),
            ),
            const SizedBox(height: 24.0),
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
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      AppStrings.appNavigate.toUpperCase(),
                      style: const TextStyle(color: Colors.white),
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
                      const Icon(
                        Icons.calendar_today,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        AppStrings.appBooking,
                        style: AppTypography.styleText14Normal.copyWith(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.favorite,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        AppStrings.appFavorite,
                        style: AppTypography.styleText14Normal.copyWith(
                          color: Theme.of(context).primaryColor,
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
