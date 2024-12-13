import 'package:feature_first/generated/assets.dart';
import 'package:feature_first/utils/constants/ui_constants.dart';
import 'package:feature_first/utils/styles/color_palates.dart';
import 'package:feature_first/utils/styles/custom_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  const ButtonAppBar({super.key, required this.title});

  @override
  Size get preferredSize => AppBar().preferredSize;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: mainSpaceBetween,
        children: [
          CircleAvatar(
            radius: 12.r,
            backgroundColor: ColorPalates.lightBackground,
            child: Image.asset(
              Assets.iconsBack,
              width: 12.w,
              height: 12.w,
            ),
          ),
      
          Text(
            title,
            style: CustomTextStyles.primaryBold,
          ),
      
          CircleAvatar(
            radius: 12.r,
            backgroundColor: ColorPalates.lightBackground,
            child: Image.asset(
              Assets.iconsNotification,
              width: 12.w,
              height: 12.w,
            ),
          )
        ],
      ),
    );
  }


}
