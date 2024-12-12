import 'package:feature_first/common/global/functions/global_functions.dart';
import 'package:feature_first/common/widgets/app_bar/profile_app_bar.dart';
import 'package:feature_first/common/widgets/circle_widget.dart';
import 'package:feature_first/generated/assets.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  static String get path => "/homeScreen";
  static String get name => "homeScreen";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalates.secondaryColor,
      body: SafeArea(
        child: Container(
          width: 1.sw,
          height: 1.sh,
          padding: padding6,
          child: Column(
            children: [

              ProfileAppBar(),

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


              Row(
                mainAxisAlignment: mainSpaceBetween,
                children: const [

                   CircleWidget(
                     image: Assets.iconsSent,
                     text: "Sent",
                   ),

                   CircleWidget(
                     image: Assets.iconsReceive,
                     text: "Receive",
                   ),

                   CircleWidget(
                     image: Assets.iconsLoan,
                     text: "Loan",
                   ),

                   CircleWidget(
                     image: Assets.iconsTopup,
                     text: "Topup",
                   ),

                ],
              ),


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
      ),
    );
  }
}
