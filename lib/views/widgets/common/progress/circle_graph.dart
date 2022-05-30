import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CircleGraph extends StatelessWidget {
  final double radius;
  final double lineWidth;
  final int currentProgress;
  final int totalProgress;
  final Color? progressColor;
  final Widget progressText;

  const CircleGraph({
    Key? key,
    this.radius = 20,
    this.lineWidth = 5,
    required this.currentProgress,
    required this.totalProgress,
    this.progressColor,
    required this.progressText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: radius,
      lineWidth: lineWidth,
      percent: currentProgress / totalProgress,
      circularStrokeCap: CircularStrokeCap.round,
      center: progressText,
      progressColor: progressColor ?? Colors.black,
      backgroundColor: Colors.grey,
    );
  }
}
