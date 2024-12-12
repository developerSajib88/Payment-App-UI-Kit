
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';

class CustomTextStyles {

  static TextStyle primary = GoogleFonts.dmSans(
      fontSize: 8.sp,
      color: ColorPalates.defaultWhite.withOpacity(0.6),
      fontWeight: FontWeight.w600
  );

  static TextStyle secondary = GoogleFonts.dmSans(
      fontSize: 5.sp,
      color: ColorPalates.customGrey,
      fontWeight: FontWeight.w400
  );

  static TextStyle primaryBold = GoogleFonts.dmSans(
      fontSize: 8.sp,
      color: ColorPalates.defaultWhite,
      fontWeight: FontWeight.w600
  );

  static TextStyle title= GoogleFonts.dmSans(
      fontSize: 10.sp,
      color: ColorPalates.secondaryColor,
      fontWeight: FontWeight.bold
  );


  static TextStyle descriptionTextStyles = GoogleFonts.dmSans(
      fontSize: 6.sp,
      color: ColorPalates.secondaryColor,
      fontWeight : FontWeight.normal
  );


  static TextStyle buttonTextStyles = GoogleFonts.dmSans(
      fontSize: 8.sp,
      color: ColorPalates.defaultWhite,
      fontWeight: FontWeight.bold
  );

}