
import 'package:feature_first/common/global/functions/global_functions.dart';
import 'package:feature_first/common/widgets/app_bar/button_app_bar.dart';
import 'package:feature_first/generated/assets.dart';
import 'package:feature_first/utils/constants/ui_constants.dart';
import 'package:feature_first/utils/styles/color_palates.dart';
import 'package:feature_first/utils/styles/custom_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SendMoneyScreen extends StatelessWidget {
  const SendMoneyScreen({super.key});

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
            ButtonAppBar(title: "Send Money"),

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
              height: 75.h,
              alignment: Alignment.centerLeft,
              padding: padding6,
              decoration: BoxDecoration(
                color: ColorPalates.lightBackground,
                borderRadius: radius6
              ),
              child: Column(
                crossAxisAlignment: crossStart,
                children: [
                  Text("Send To",style: CustomTextStyles.primary,),

                  gap4,

                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Column(
                          crossAxisAlignment: crossCenter,
                          mainAxisAlignment: mainCenter,
                          children: [
                            CircleAvatar(
                              backgroundColor: ColorPalates.primaryColor,
                              radius: 15.5.r,
                              child: CircleAvatar(
                                radius: 15.r,
                                backgroundColor: ColorPalates.lightBackground,
                                child: Icon(Icons.add,color: ColorPalates.primaryColor),
                              ),
                            ),
                            gap4,
                            Text("Add",style: CustomTextStyles.primary,)

                          ],
                        ),

                        gap6,

                        Column(
                          crossAxisAlignment: crossCenter,
                          mainAxisAlignment: mainCenter,
                          children: [
                            CircleAvatar(
                              radius: 15.r,
                              backgroundColor: ColorPalates.lightBackground,
                              backgroundImage: const AssetImage(Assets.imagesProfile1),
                            ),
                            gap4,
                            Text("Yamilet",style: CustomTextStyles.primary.copyWith(fontWeight: FontWeight.normal),)

                          ],
                        ),

                        gap6,

                        Column(
                          crossAxisAlignment: crossCenter,
                          mainAxisAlignment: mainCenter,
                          children: [
                            CircleAvatar(
                              radius: 15.r,
                              backgroundColor: ColorPalates.lightBackground,
                              backgroundImage: const AssetImage(Assets.imagesProfile2),
                            ),
                            gap4,
                            Text("Alexa",style: CustomTextStyles.primary.copyWith(fontWeight: FontWeight.normal))

                          ],
                        ),

                        gap6,

                        Column(
                          crossAxisAlignment: crossCenter,
                          mainAxisAlignment: mainCenter,
                          children: [
                            CircleAvatar(
                              radius: 15.r,
                              backgroundColor: ColorPalates.lightBackground,
                              backgroundImage: const AssetImage(Assets.imagesProfile3),
                            ),
                            gap4,
                            Text("Yakub",style: CustomTextStyles.primary.copyWith(fontWeight: FontWeight.normal),)

                          ],
                        ),

                        gap6,

                        Column(
                          crossAxisAlignment: crossCenter,
                          mainAxisAlignment: mainCenter,
                          children: [
                            CircleAvatar(
                              radius: 15.r,
                              backgroundColor: ColorPalates.lightBackground,
                              backgroundImage: const AssetImage(Assets.imagesProfile),
                            ),
                            gap4,
                            Text("Krishna",style: CustomTextStyles.primary.copyWith(fontWeight: FontWeight.normal),)

                          ],
                        ),



                      ],
                    ),
                  ),
                ],
              ),
            ),

            gap12,

            Container(
              width: 1.sw,
              height: 65.h,
              padding: padding12,
              decoration: BoxDecoration(
                borderRadius: radius6,
                color: ColorPalates.lightBackground
              ),
              child: Column(
                crossAxisAlignment: crossStart,
                mainAxisAlignment: mainCenter,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Enter Your Amount",
                        style:
                            CustomTextStyles.secondary.copyWith(fontSize: 7.sp),
                      ),
                      Text(
                        "Change Currency?",
                        style: CustomTextStyles.secondary.copyWith(
                            fontSize: 7.sp, color: const Color(0xffFF3F60)),
                      ),
                    ],
                  ),

                  gap8,

                  RichText(
                    text: TextSpan(
                      text: "USD  ",
                      style: CustomTextStyles.primaryBold.copyWith(color: Colors.grey,fontSize: 10.sp),
                      children: [
                        TextSpan(
                          text: "36.00",
                          style: CustomTextStyles.primaryBold.copyWith(fontSize: 10.sp)
                        )
                      ]
                    ),
                  )

                ],
              ),
            ),

            const Spacer(),

            Container(
              width: 1.sw,
              height: 25.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: ColorPalates.primaryColor,
                borderRadius: radius8
              ),
              child: Text("Send Money",style: CustomTextStyles.primaryBold,),
            ),

            gap10,


          ],
        ),
      ),
    );
  }
}
