import 'package:flutter/cupertino.dart';
import 'package:gym/res/app_colors.dart';

class FontFamily {
  static String bold = "OpenSans-Bold";
  static String regular = "OpenSans-Regular";
}

class AppTextStyles {
  static TextStyle get bigTextPrimary => TextStyle(
        fontFamily: FontFamily.bold,
        fontSize: 28,
        fontWeight: FontWeight.w500,
        color: AppColors.primary,
      );

  static TextStyle get titleBar => TextStyle(
        fontFamily: FontFamily.bold,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: AppColors.white,
      );

  static TextStyle get detailTextGray => TextStyle(
        fontFamily: FontFamily.bold,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: AppColors.gray,
      );

  static TextStyle get titleBoldPrimary => TextStyle(
        fontFamily: FontFamily.bold,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.primary,
      );

  static TextStyle get titleBoldGray => TextStyle(
        fontFamily: FontFamily.bold,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.gray,
      );

  static TextStyle get titleBoldBlack => TextStyle(
        fontFamily: FontFamily.bold,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      );

  static TextStyle get titleRegularBlack => TextStyle(
        fontFamily: FontFamily.regular,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      );

  static TextStyle get descriptionBoldBlack => TextStyle(
        fontFamily: FontFamily.bold,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      );

  static TextStyle get descriptionRegularBlack => TextStyle(
        fontFamily: FontFamily.regular,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      );

  static TextStyle get descriptionRegularGray => TextStyle(
        fontFamily: FontFamily.regular,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.gray,
      );

  static TextStyle get link => TextStyle(
        fontFamily: FontFamily.regular,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.blue,
      );

  static TextStyle get marketing => TextStyle(
        fontFamily: FontFamily.bold,
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: AppColors.white,
      );
}
