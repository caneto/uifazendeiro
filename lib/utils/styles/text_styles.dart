import 'package:flutter/material.dart';
import 'package:uifinanceiro/utils/styles/colors_app.dart';

class TextStyles {
  static TextStyles? _instance;
  TextStyles._();

  static TextStyles get instance {
    _instance??= TextStyles._();
    return _instance!;
  }

  String get primaryFont => 'Inter';
  
  //primary font
  TextStyle get textPrimaryFontRegular => TextStyle(
    fontWeight: FontWeight.normal, fontFamily: primaryFont
  );

  TextStyle get textPrimaryFontMedium => TextStyle(
      fontWeight: FontWeight.w500, fontFamily: primaryFont
  );

  TextStyle get textPrimaryFontSemiBold => TextStyle(
      fontWeight: FontWeight.w600, fontFamily: primaryFont
  );

  TextStyle get textPrimaryFontBold => TextStyle(
      fontWeight: FontWeight.bold, fontFamily: primaryFont
  );

  TextStyle get textPrimaryFontExtraBold => TextStyle(
      fontWeight: FontWeight.w800, fontFamily: primaryFont
  );

  TextStyle get textSecundaryFontExtraBold => TextStyle(
      fontWeight: FontWeight.w800, fontFamily: primaryFont
  );

  TextStyle get textSecundaryFontExtraBoldPrimaryColor => textSecundaryFontExtraBold.copyWith(
    color: ColorsApp.instance.primary
  );

  TextStyle get textStart => textPrimaryFontSemiBold.copyWith(
    fontSize: 18,
    color: Colors.white
  );

  TextStyle get titleWhite => textPrimaryFontBold.copyWith(
    fontSize: 22,
    color: Colors.white
  );

  TextStyle get titleBlack => textPrimaryFontBold.copyWith(
      fontSize: 22,
      color: Colors.black
  );

  TextStyle get titlePrimaryColor => textPrimaryFontBold.copyWith(
      fontSize: 22,
      color: ColorsApp.instance.primary
  );
}

extension TextStylesExtensions on BuildContext {
  TextStyles get textStyles => TextStyles.instance;
}