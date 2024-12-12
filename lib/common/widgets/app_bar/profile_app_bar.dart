import 'package:feature_first/generated/assets.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget{
  const ProfileAppBar({super.key});

  @override
  // TODO: implement preferredSize
  Size get preferredSize => AppBar().preferredSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Image.asset(
          Assets.imagesProfile,
          width: 30.w,
          height: 30.w,
        ),

        gap6,
        
        Column(
          crossAxisAlignment: crossStart,
          children: [

            const Text(
                "Welcome back,",
              style: TextStyle(color: Colors.grey),
            ),

            Text(
                "Tanya Myroniuk",
                style: CustomTextStyles.primary
            ),

          ],
        ),

        const Spacer(),


        Container(
          width: 25.w,
          height: 25.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ColorPalates.lightBackground
          ),
          child: IconButton(
              onPressed: (){},
              icon: Image.asset(Assets.iconsSearch)
          ),
        )


      ],
    );
  }


}
