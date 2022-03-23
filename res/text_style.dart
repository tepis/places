import 'package:flutter/painting.dart';
import 'colors.dart';

TextStyle _text = const TextStyle(
    fontStyle: FontStyle.normal,
    color: textPrimaryColor,
    fontFamily: 'Roboto',
);

final textRegular = _text.copyWith(fontWeight: FontWeight.w400);
final textMedium = _text.copyWith(fontWeight: FontWeight.w500);
final textBold = _text.copyWith(fontWeight: FontWeight.w700);