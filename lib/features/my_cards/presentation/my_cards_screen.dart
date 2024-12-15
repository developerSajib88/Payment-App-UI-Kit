import 'package:feature_first/common/global/functions/global_functions.dart';
import 'package:feature_first/common/widgets/app_bar/button_app_bar.dart';
import 'package:feature_first/common/widgets/buttons/widget_bounce.dart';
import 'package:feature_first/features/my_cards/presentation/add_new_cards_screen.dart';
import 'package:feature_first/generated/assets.dart';
import 'package:feature_first/utils/constants/ui_constants.dart';
import 'package:feature_first/utils/styles/color_palates.dart';
import 'package:feature_first/utils/styles/custom_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCardsScreen extends StatelessWidget {
  const MyCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalates.backgroundColor,
      body: Container(
        width: 1.sw,
        height: 1.sh,
        padding: padding6,
        child: Column(
          children: [

            const ButtonAppBar(title: "All Cards"),

            gap12,

            Stack(
              children: [
                Container(
                  width: 1.sw,
                  height: 100.h,
                  padding: padding6,
                  decoration: BoxDecoration(
                      color: ColorPalates.lightBackground,
                      borderRadius: radius12
                  ),
                  child: Stack(
                    children: [

                      Image.asset(
                        Assets.imagesWorldmap,
                      ),


                    ],
                  ),
                ),


                Container(
                  width: 1.sw,
                  height: 100.h,
                  padding: padding6,
                  margin: padding6,
                  decoration: BoxDecoration(
                    borderRadius: radius12,
                  ),
                  child: Column(
                    crossAxisAlignment: crossStart,
                    children: [
                      Row(
                        mainAxisAlignment: mainSpaceBetween,
                        children: [

                          Image.asset(
                            Assets.iconsSensor,
                            width: 15.w,
                            height: 12.h,
                          ),

                          Image.asset(
                            Assets.iconsNetwork,
                            width: 15.w,
                            height: 12.h,
                            color: ColorPalates.defaultGrey.withOpacity(0.5),
                          ),

                        ],
                      ),

                      gap12,

                      Text(
                        GlobalFunctions.formatNumber("4562112245957852"),
                        style: CustomTextStyles.primary.copyWith(fontSize: 12.sp),
                      ),

                      gap4,

                      Text(
                        "Aimal Naseem",
                        style: CustomTextStyles.primary,
                      ),

                      gap4,


                      Row(
                        crossAxisAlignment: crossCenter,
                        children: [

                          Column(
                            crossAxisAlignment: crossStart,
                            children: [
                              Text(
                                "Expire Date",
                                style: CustomTextStyles.secondary,
                              ),

                              Text(
                                "24/2000",
                                style: CustomTextStyles.primary,
                              ),

                            ],
                          ),

                          gap12,

                          Column(
                            crossAxisAlignment: crossStart,
                            children: [
                              Text(
                                "CVV",
                                style: CustomTextStyles.secondary,
                              ),

                              Text(
                                "6986",
                                style: CustomTextStyles.primary,
                              ),

                            ],
                          ),

                          const Spacer(),


                          Column(
                            crossAxisAlignment: crossCenter,
                            children: [
                              Stack(
                                alignment: Alignment.centerRight,
                                clipBehavior: Clip.none,
                                children: [
                                  CircleAvatar(
                                    radius: 6.r,
                                    backgroundColor: const Color(0xffEA001B),
                                  ),

                                  Positioned(
                                    right: -15,
                                    child: CircleAvatar(
                                      radius: 6.r,
                                      backgroundColor: const Color(0xffF79F1A),
                                    ),
                                  )
                                ],
                              ),

                              gap4,

                              Text(
                                "Mastercard",
                                style: CustomTextStyles.primary,
                              )

                            ],
                          )


                        ],
                      )


                    ],
                  ),
                ),


                Container(
                  width: 1.sw,
                  height: 100.h,
                  padding: padding6,
                  decoration: BoxDecoration(
                      borderRadius: radius12,
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Colors.transparent,
                            ColorPalates.primaryColor.withOpacity(0.07),
                            ColorPalates.primaryColor.withOpacity(0.1),
                          ]
                      )
                  ),
                ),



              ],
            ),



            Container(
              width: 1.sw,
              height: 100.h,
              padding: padding10,
              decoration: BoxDecoration(
                  color: const Color(0xff1E1E2D),
                  borderRadius: radius12
              ),
              child: Column(
                crossAxisAlignment: crossStart,
                children: [
                  Image.asset(
                    Assets.iconsVisaSensor,
                    width: 20.w,
                    height: 15.h,
                  ),

                  gap12,

                  Text(
                    GlobalFunctions.formatNumber("4562112245957852"),
                    style: CustomTextStyles.primary.copyWith(fontSize: 12.sp),
                  ),

                  Text(
                    "Aimal Naseem",
                    style: CustomTextStyles.primary,
                  ),

                  gap8,


                  Row(
                    crossAxisAlignment: crossCenter,
                    children: [

                      Column(
                        crossAxisAlignment: crossStart,
                        children: [
                          Text(
                            "Expire Date",
                            style: CustomTextStyles.secondary,
                          ),

                          Text(
                            "24/2000",
                            style: CustomTextStyles.primary,
                          ),

                        ],
                      ),



                      const Spacer(),


                      Image.asset(
                        Assets.imagesVisa,
                        width: 22.w,
                        height: 15.h,
                      )



                    ],
                  )


                ],
              ),
            ),

            const Spacer(),

            WidgetBounce(
              onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context)=> const AddNewCardsScreen())),
              child: Container(
                width: 1.sw,
                height: 25.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: ColorPalates.primaryColor,
                  borderRadius: radius8
                ),
                child: Row(
                  mainAxisAlignment: mainCenter,
                  children: [
                    Text(
                      "Add Card",
                      style: CustomTextStyles.primary.copyWith(color: Colors.white),
                    ),

                    gap2,

                    const Icon(Icons.add,color: Colors.white,)
                  ],
                ),
              ),
            ),

            gap8




          ],
        ),
      ),
    );
  }
}
