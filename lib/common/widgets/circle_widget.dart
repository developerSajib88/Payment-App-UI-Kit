import 'package:feature_first/app/app.dart';
import 'package:feature_first/utils/constants/ui_constants.dart';
import 'package:feature_first/utils/styles/color_palates.dart';
import 'package:feature_first/utils/styles/custom_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleWidget extends StatelessWidget {
  final String? text;
  final String image;
  const CircleWidget({
    super.key,
    this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossCenter,
      children: [
        CircleAvatar(
          radius: 14.r,
          backgroundColor: ColorPalates.lightBackground,
          child: Image.asset(
            image,
            width: 14.w,
            height: 14.w,
          ),
        ),

        if(text != null)
        Text(
          text ?? "",
          style: CustomTextStyles.secondary.copyWith(fontSize: 7.sp),
        )
        
      ],
    );
  }
}
