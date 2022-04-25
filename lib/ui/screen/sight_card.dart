import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/sight.dart';

class SightCard extends StatelessWidget {
  final Sight sight;
  const SightCard(this.sight, {Key? key}) : super(key: key);

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
              child: SvgPicture.asset('res/svg/Heart.svg'),
            ),
          ],
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          height: 96,
          decoration: const BoxDecoration(
            color: Color(0xFFF5F5F5),
            borderRadius: BorderRadius.only(
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
                style: const TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  color: Color(0xff3B3E5B),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 2),
                width: double.infinity,
                height: 18,
                child: Text(
                  sight.details,
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xff3B3E5B),
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
