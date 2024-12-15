import 'package:feature_first/common/global/functions/global_functions.dart';
import 'package:feature_first/common/widgets/app_bar/button_app_bar.dart';
import 'package:feature_first/generated/assets.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddNewCardsScreen extends StatelessWidget {
  const AddNewCardsScreen({super.key});

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

            const ButtonAppBar(title: "Add New Card"),

            gap12,

            Expanded(
              child: ListView(
                padding: padding0,
                children: [
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
              
              
                  Column(
                    crossAxisAlignment: crossStart,
                    children: [
                      Text(
                          "Cardholder Name",
                        style: CustomTextStyles.secondary.copyWith(
                          fontSize: 7.sp
                        ),
                      ),
              
                      TextFormField(
                        controller: TextEditingController(text: "Aimal Naseem"),
                        style: CustomTextStyles.secondary.copyWith(
                          fontSize: 7.sp,
                          color: Colors.grey
                        ),
                        textAlign: TextAlign.start,
                        cursorColor: ColorPalates.primaryColor,
              
                        decoration: InputDecoration(
                          contentPadding: paddingTop8,
                          prefixIcon: const Icon(
                              Icons.account_circle_outlined,
                            color: Colors.grey,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: ColorPalates.primaryColor)
                          )
                        ),
                      ),
              
                      gap16,
              
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
              
                          SizedBox(
                            width: 80.w,
                            child: Column(
                              crossAxisAlignment: crossStart,
                              children: [
              
                                Text(
                                  "Expiry Date",
                                  style: CustomTextStyles.secondary.copyWith(
                                      fontSize: 7.sp
                                  ),
                                ),
              
                                TextFormField(
                                  controller: TextEditingController(text: "09/06/2024"),
                                  style: CustomTextStyles.secondary.copyWith(
                                      fontSize: 7.sp,
                                      color: Colors.grey
                                  ),
                                  textAlign: TextAlign.start,
                                  cursorColor: ColorPalates.primaryColor,
              
                                  decoration: InputDecoration(
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: ColorPalates.primaryColor)
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
              
                          gap4,
              
                          SizedBox(
                            width: 80.w,
                            child: Column(
                              crossAxisAlignment: crossStart,
                              children: [
                                Text(
                                  "4-digit CVV",
                                  style: CustomTextStyles.secondary.copyWith(
                                      fontSize: 7.sp
                                  ),
                                ),
                                TextFormField(
                                  controller: TextEditingController(text: "6986"),
                                  style: CustomTextStyles.secondary.copyWith(
                                      fontSize: 7.sp,
                                      color: Colors.grey
                                  ),
                                  textAlign: TextAlign.start,
                                  cursorColor: ColorPalates.primaryColor,
              
                                  decoration: InputDecoration(
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: ColorPalates.primaryColor)
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
              
              
                      gap12,
              
              
                      Text(
                        "Card Number",
                        style: CustomTextStyles.secondary.copyWith(
                            fontSize: 7.sp
                        ),
                      ),
              
                      TextFormField(
                        controller: TextEditingController(text: "4562 1122 4595 7852"),
                        style: CustomTextStyles.secondary.copyWith(
                            fontSize: 7.sp,
                            color: Colors.grey
                        ),
                        textAlign: TextAlign.start,
                        cursorColor: ColorPalates.primaryColor,
              
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(right: 10.w,top: 5.h),
                            prefixIcon: const Icon(
                              Icons.payment,
                              color: Colors.grey,
                            ),
                            suffix: Stack(
                              alignment: Alignment.centerRight,
                              clipBehavior: Clip.none,
                              children: [
                                CircleAvatar(
                                  radius: 5.r,
                                  backgroundColor: const Color(0xffEA001B),
                                ),
              
                                Positioned(
                                  right: -15,
                                  child: CircleAvatar(
                                    radius: 5.r,
                                    backgroundColor: const Color(0xffF79F1A),
                                  ),
                                )
                              ],
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: ColorPalates.primaryColor)
                            )
                        ),
                      ),
              
              
                    ],
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
