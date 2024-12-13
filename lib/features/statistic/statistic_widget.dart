import 'package:feature_first/app/app.dart';
import 'package:feature_first/utils/constants/ui_constants.dart';
import 'package:feature_first/utils/styles/color_palates.dart';
import 'package:feature_first/utils/styles/custom_text_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';

class LineChartSample2 extends StatefulWidget {
  const LineChartSample2({super.key});

  @override
  State<LineChartSample2> createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<LineChartSample2> {
  List<Color> gradientColors = [
    ColorPalates.primaryColor,
    ColorPalates.primaryColor
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.70,
          child: LineChart(
            mainData(),
          ),
        ),

      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    final style = CustomTextStyles.secondary.copyWith(
      fontSize: 7.sp
    );

    Widget text;
    switch (value.toInt()) {

      case 2:
        text = Text("Oct", style: style);
        break;
      case 4:
        text = Text("Nov", style: style);
        break;
      case 6:
        text = Text("Dec", style: style);
        break;

      case 8:
        text = Container(
            height: 12.h,
            padding: paddingH4,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: ColorPalates.primaryColor,
              borderRadius: BorderRadius.circular(2.r)
            ),
            child: Text("Jan", style: style.copyWith(color: Colors.white))
        );
        break;

      case 10:
        text = Text("Feb", style: style);
        break;

      case 12:
        text = Text("Mar", style: style);
        break;

      case 14:
        text = Text("Apr", style: style);
        break;

      default:
        text = Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }


  LineChartData mainData() {
    return LineChartData(
      lineTouchData: LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          getTooltipColor: (touchSpot)=> ColorPalates.primaryColor,
          getTooltipItems: (List<LineBarSpot> touchedSpots) {
            return touchedSpots.map((spot) {
              return LineTooltipItem(
                "${spot.y}", // Custom text for each tooltip
                const TextStyle(
                  color: Colors.white, // Tooltip text color
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              );
            }).toList();
          },
        ),
      ),
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 2,
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: Colors.transparent,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: ColorPalates.lightBackground,
            strokeWidth: 0.5.w,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 1.5),
            FlSpot(2, 1),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          color: ColorPalates.primaryColor.withOpacity(0.5),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            // gradient: LinearGradient(
            //   begin: Alignment.topCenter,
            //   end: Alignment.bottomCenter,
            //
            // ),
            color: ColorPalates.primaryColor.withOpacity(0.1)
          ),

        ),
      ],
    );
  }

}