import 'package:feature_first/features/home/presentation/home_screen.dart';
import 'package:feature_first/features/my_cards/presentation/my_cards.dart';
import 'package:feature_first/features/statistic/statistic_screen.dart';
import 'package:feature_first/generated/assets.dart';
import 'package:feature_first/utils/styles/color_palates.dart';
import 'package:feature_first/utils/styles/custom_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BottomNavigation extends HookWidget {
  static String get path => "/bottomNavigation";
  static String get name => "bottomNavigation";
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {

    final navigationIndex = useState<int>(0);
    final screens = useState<List<Widget>>([
      const HomeScreen(),
      const MyCardsScreen(),
      const StatisticScreen(),
      const StatisticScreen(),
    ]);

    return Scaffold(
      body: screens.value[navigationIndex.value],
      bottomNavigationBar: SizedBox(
        height: 30.h,
        child: BottomNavigationBar(
            currentIndex: navigationIndex.value,
            backgroundColor: ColorPalates.lightBackground,
            showUnselectedLabels: true,
            selectedItemColor: ColorPalates.primaryColor,
            unselectedLabelStyle: CustomTextStyles.secondary.copyWith(color: ColorPalates.secondaryColor),
            selectedLabelStyle: CustomTextStyles.secondary.copyWith(color: ColorPalates.primaryColor),
            onTap: (index)=> navigationIndex.value = index,
            items:  [
              BottomNavigationBarItem(
                  icon: Image.asset(
                    Assets.iconsHome,
                    width: 12.w,
                    height: 12.w,
                    color: navigationIndex.value == 0 ? ColorPalates.primaryColor : null
                  ),
                  label: "Home",
                  backgroundColor: ColorPalates.lightBackground,

              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  Assets.iconsWallet,
                  width: 12.w,
                  height: 12.w,
                  color: navigationIndex.value == 1 ? ColorPalates.primaryColor : null
                ),
                label: "My Cards",
              ),

              BottomNavigationBarItem(
                icon: Image.asset(
                  Assets.iconsStatistic,
                  width: 12.w,
                  height: 12.w,
                  color: navigationIndex.value == 2 ? ColorPalates.primaryColor : null
                ),
                label: "Statistic",
              ),

              BottomNavigationBarItem(
                icon: Image.asset(
                  Assets.iconsSettings,
                  width: 12.w,
                  height: 12.w,
                  color: navigationIndex.value == 3 ? ColorPalates.primaryColor : null
                ),
                label: "Settings",
              ),

            ]
        ),
      ),
    );
  }
}
