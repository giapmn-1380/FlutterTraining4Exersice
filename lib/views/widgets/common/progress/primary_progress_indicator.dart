import 'package:flutter/material.dart';
import 'package:giapmn_training_4_exercise/styles/custom_color.dart';

class PrimaryProgressIndicator extends StatelessWidget {
  const PrimaryProgressIndicator({Key? key, this.color}) : super(key: key);

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        valueColor:
        AlwaysStoppedAnimation<Color>(color ?? CustomColor.progressFinish),
      ),
    );
  }
}
