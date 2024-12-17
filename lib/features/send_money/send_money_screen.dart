
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
            const ButtonAppBar(title: "Send Money"),

            gap12,

            Container(
              width: 1.sw,
              height: 80.h,
              padding: padding8,
              decoration: BoxDecoration(
                  color: ColorPalates.lightBackground,
                  borderRadius: radius12
              ),
              child: Row(
                crossAxisAlignment: crossCenter,
                mainAxisAlignment: mainSpaceBetween,
                children: <Widget>[


                  Column(
                    crossAxisAlignment: crossStart,
                    children: [
                      Text("Category Chart",style: CustomTextStyles.primary,),

                      gap6,

                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: crossStart,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 7.w,
                                    height: 7.w,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffFFCA63),
                                      borderRadius: BorderRadius.circular(2.r)
                                    ),
                                  ),

                                  gap4,

                                  Text(
                                    "Transaction",
                                    style: CustomTextStyles.secondary.copyWith(
                                      color: Colors.white,
                                      fontSize: 6.w
                                    ),
                                  )
                                ],
                              ),

                              gap6,

                              Row(
                                children: [
                                  Container(
                                    width: 7.w,
                                    height: 7.w,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff47DDC2),
                                        borderRadius: BorderRadius.circular(2.r)
                                    ),
                                  ),

                                  gap4,

                                  Text(
                                    "Transfer",
                                    style: CustomTextStyles.secondary.copyWith(
                                        color: Colors.white,
                                        fontSize: 6.w
                                    ),
                                  )
                                ],
                              ),

                              gap6,

                              Row(
                                children: [
                                  Container(
                                    width: 7.w,
                                    height: 7.w,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffC172FF),
                                        borderRadius: BorderRadius.circular(2.r)
                                    ),
                                  ),

                                  gap4,

                                  Text(
                                    "Travel",
                                    style: CustomTextStyles.secondary.copyWith(
                                        color: Colors.white,
                                        fontSize: 6.w
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),

                          gap6,

                          Column(
                            crossAxisAlignment: crossStart,
                            children: [

                              Row(
                                children: [
                                  Container(
                                    width: 7.w,
                                    height: 7.w,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff47DDC2),
                                        borderRadius: BorderRadius.circular(2.r)
                                    ),
                                  ),

                                  gap4,

                                  Text(
                                    "Shopping",
                                    style: CustomTextStyles.secondary.copyWith(
                                        color: Colors.white,
                                        fontSize: 6.w
                                    ),
                                  )
                                ],
                              ),

                              gap6,

                              Row(
                                children: [
                                  Container(
                                    width: 7.w,
                                    height: 7.w,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffFFCA63),
                                        borderRadius: BorderRadius.circular(2.r)
                                    ),
                                  ),

                                  gap4,

                                  Text(
                                    "Food",
                                    style: CustomTextStyles.secondary.copyWith(
                                        color: Colors.white,
                                        fontSize: 6.w
                                    ),
                                  )
                                ],
                              ),

                              gap6,


                              Row(
                                children: [
                                  Container(
                                    width: 7.w,
                                    height: 7.w,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffC172FF),
                                        borderRadius: BorderRadius.circular(2.r)
                                    ),
                                  ),

                                  gap4,

                                  Text(
                                    "Car",
                                    style: CustomTextStyles.secondary.copyWith(
                                        color: Colors.white,
                                        fontSize: 6.w
                                    ),
                                  )
                                ],
                              ),


                            ],
                          ),

                        ],
                      ),



                    ],
                  ),


                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: 55.w,
                        height: 55.w,
                        child: CustomPaint(
                          painter: SegmentedCircularPainter(
                            values: [40, 20, 20, 20], // Values to represent percentages.
                            colors: [
                              const Color(0xffFF6393),
                              const Color(0xff47DDC2),
                              const Color(0xffC172FF),
                            ], // Colors for each slice.
                          ),
                        ),
                      ),

                      Column(
                        crossAxisAlignment: crossCenter,
                        mainAxisAlignment: mainCenter,
                        children: [
                          Text(
                            "55%",
                            style: CustomTextStyles.primaryBold.copyWith(
                              fontWeight: FontWeight.w800,
                              fontSize: 10.sp
                            ),
                          ),

                          Text(
                            "Transition",
                            style: CustomTextStyles.secondary.copyWith(
                              fontSize: 7.sp
                            ),
                          )
                        ],
                      )
                    ],
                  ),


                ],
              ),
            ),

            gap12,

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



class SegmentedCircularPainter extends CustomPainter {
  final List<double> values;
  final List<Color> colors;
  final double strokeWidth;
  final double gapSize;

  SegmentedCircularPainter({
    required this.values,
    required this.colors,
    this.strokeWidth = 10,
    this.gapSize = 20,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final double total = values.reduce((a, b) => a + b);
    final double radius = size.width / 2;

    double startAngle = -90.0; // Start at the top.

    final Rect rect = Rect.fromCircle(center: Offset(size.width / 2, size.height / 2), radius: radius);

    for (int i = 0; i < values.length; i++) {
      final sweepAngle = (values[i] / total) * 360.0 - gapSize; // Account for gaps between segments.

      final Paint paint = Paint()
        ..color = colors[i % colors.length]
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth
        ..strokeCap = StrokeCap.round; // Rounded edges for a smoother look.

      canvas.drawArc(
        rect,
        radians(startAngle),
        radians(sweepAngle),
        false, // False for a stroked arc.
        paint,
      );

      startAngle += sweepAngle + gapSize; // Adjust for the gap size.
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

  double radians(double degrees) => degrees * (3.141592653589793 / 180.0); // Convert degrees to radians.
}