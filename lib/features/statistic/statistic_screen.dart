import 'package:feature_first/app/app.dart';
import 'package:feature_first/common/widgets/app_bar/button_app_bar.dart';
import 'package:feature_first/features/statistic/statistic_widget.dart';
import 'package:feature_first/generated/assets.dart';
import 'package:feature_first/utils/constants/ui_constants.dart';
import 'package:feature_first/utils/styles/color_palates.dart';
import 'package:feature_first/utils/styles/custom_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatisticScreen extends StatelessWidget {

  static String get path => "/statisticScreen";
  static String get name => "statisticScreen";

  const StatisticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalates.backgroundColor,
      body: Container(
        width: 1.sw,
        height: 1.sh,
        padding: padding6,
        child: Column(
          crossAxisAlignment: crossCenter,
          children: [

           ButtonAppBar(
             title: "Statistic",
           ),

           gap12,

           Text(
             "Current Balance",
             style: CustomTextStyles.primary.copyWith(
               fontWeight: FontWeight.w300,
             ),
           ),

            Text(
              "\$8,545.00",
              style: CustomTextStyles.primaryBold,
            ),

            gap12,

            const LineChartSample2(),

            gap12,

            Row(
              mainAxisAlignment: mainSpaceBetween,
              children: [

                Text(
                  "Transition",
                  style: CustomTextStyles.primary.copyWith(color: ColorPalates.defaultWhite),
                ),

                Text(
                  "See All",
                  style: CustomTextStyles.primary.copyWith(
                      color: ColorPalates.primaryColor
                  ),
                )

              ],
            ),

            Expanded(
              child: ListView(
                padding: padding0,
                children: [


                  ListTile(
                    contentPadding: padding0,
                    leading: CircleAvatar(
                      radius: 12.r,
                      backgroundColor: ColorPalates.lightBackground,
                      child: Image.asset(
                        Assets.iconsApple,
                        width: 12.w,
                        height: 12.w,
                      ),
                    ),
                    title: Text(
                      "Apple Store",
                      style: CustomTextStyles.primaryBold,
                    ),
                    subtitle: Text("Entertainment",style: CustomTextStyles.secondary,),
                    trailing: Text("-\$5.99",style: CustomTextStyles.primaryBold,),
                  ),

                  ListTile(
                    contentPadding: padding0,
                    leading: CircleAvatar(
                      radius: 12.r,
                      backgroundColor: ColorPalates.lightBackground,
                      child: Image.asset(
                        Assets.iconsSpotify,
                        width: 12.w,
                        height: 12.w,
                      ),
                    ),
                    title: Text(
                      "Spotify",
                      style: CustomTextStyles.primaryBold,
                    ),
                    subtitle: Text("Music",style: CustomTextStyles.secondary,),
                    trailing: Text("-\$12.99",style: CustomTextStyles.primaryBold,),
                  ),

                  ListTile(
                    contentPadding: padding0,
                    leading: CircleAvatar(
                      radius: 12.r,
                      backgroundColor: ColorPalates.lightBackground,
                      child: Image.asset(
                        Assets.iconsTransition,
                        width: 12.w,
                        height: 12.w,
                      ),
                    ),
                    title: Text(
                      "Money Transfer",
                      style: CustomTextStyles.primaryBold,
                    ),
                    subtitle: Text("Transition",style: CustomTextStyles.secondary,),
                    trailing: Text(
                      "\$5.99",
                      style: CustomTextStyles.primaryBold
                          .copyWith(color: ColorPalates.primaryColor
                      ),
                    ),
                  ),

                  ListTile(
                    contentPadding: padding0,
                    leading: CircleAvatar(
                      radius: 12.r,
                      backgroundColor: ColorPalates.lightBackground,
                      child: Image.asset(
                        Assets.iconsGrocery,
                        width: 12.w,
                        height: 12.w,
                      ),
                    ),
                    title: Text(
                      "Grocery",
                      style: CustomTextStyles.primaryBold,
                    ),
                    subtitle: Text("shopping",style: CustomTextStyles.secondary,),
                    trailing: Text("-\$3.99",style: CustomTextStyles.primaryBold,),
                  ),
                ],
              ),
            )



          ],
        ),
      ),
    );
  }
}
