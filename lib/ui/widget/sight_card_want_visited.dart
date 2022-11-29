import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/app_assets.dart';
import 'package:places/domain/app_colors.dart';
import 'package:places/domain/app_string.dart';
import 'package:places/domain/app_typography.dart';
import 'package:places/domain/sight.dart';

class SightCardWantVisited extends StatelessWidget {
  final Sight sight;
  const SightCardWantVisited(this.sight, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: 96,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                child: Image.network(
                  sight.url,
                  loadingBuilder: (
                    context,
                    child,
                    loadingProgress,
                  ) {
                    if (loadingProgress == null) {
                      return child;
                    }

                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Positioned(
              top: 16,
              left: 16,
              child: Text(
                sight.type,
                style: const TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 19,
              right: 19,
              child: SvgPicture.asset(
                AppAssets.sightCardCloseIcon,
              ),
            ),
            Positioned(
              top: 19,
              right: 55,
              child: SvgPicture.asset(
                AppAssets.sighCardSchedule,
              ),
            ),
          ],
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          height: 96,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColorLight,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(16.0),
              bottomRight: Radius.circular(16.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                sight.name,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                AppStrings.schedule,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Container(
                margin: const EdgeInsets.only(top: 11),
                width: double.infinity,
                height: 16,
                child: Text(
                  AppStrings.appWorkTime,
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
