import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:giapmn_training_4_exercise/styles/custom_color.dart';
import 'package:giapmn_training_4_exercise/styles/custom_shape.dart';
import 'package:giapmn_training_4_exercise/styles/custom_spacing.dart';
import 'package:giapmn_training_4_exercise/styles/custom_text_style.dart';

/*
How to use
showCupertinoAlertDialog(
  context: context,
  title: 'title',
  content: 'content',
  positiveActionTitle: 'right button title',
  negativeActionTitle: 'left button title',
  positiveActionPressed: () {},
  negativeActionPressed: () {},
);
 */

void showAlertDialog(
    {required BuildContext context,
    String? title,
    TextStyle? textStyleContent,
    required String content,
    required String positiveActionTitle,
    TextStyle? textStylePositiveTitle,
    String? negativeActionTitle,
    TextStyle? textStyleNegativeTitle,
    required Function() positiveActionPressed,
    Function()? negativeActionPressed,
    Widget? widget,
    bool barrierDismissible = true,
    Color? positiveTextColor,
    Widget? contentWidget}) {
  showDialog(
    barrierDismissible: barrierDismissible,
    barrierColor: const Color.fromRGBO(0, 0, 0, 0.4),
    context: context,
    builder: (builderContext) {
      return Dialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: CustomSpacing.space40),
        shape: CustomShape.buttonShapeRadius10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: CustomSpacing.space16,
                top: CustomSpacing.space24,
                right: CustomSpacing.space16,
                bottom: title?.isNotEmpty == true ? CustomSpacing.space16 : 0,
              ),
              child: title?.isNotEmpty == true
                  ? Text(
                      title!,
                      style: CustomTextStyle.fontSize20,
                      textAlign: TextAlign.center,
                    )
                  : const SizedBox(),
            ),
            content.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.only(
                      left: CustomSpacing.space16,
                      right: CustomSpacing.space16,
                      bottom: CustomSpacing.space16,
                    ),
                    child: Text(
                      content,
                      textAlign: TextAlign.center,
                      style: textStyleContent ?? TextStyle(fontSize: 16.0, color: CustomColor.textSecondary),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(
                      left: CustomSpacing.space16,
                      right: CustomSpacing.space16,
                      bottom: CustomSpacing.space16,
                    ),
                    child: contentWidget ?? const SizedBox()),
            widget != null
                ? Padding(
                    padding: const EdgeInsets.only(bottom: CustomSpacing.space16),
                    child: widget,
                  )
                : const SizedBox(),
            Divider(thickness: 1, height: 0, color: CustomColor.dialogDivider),
            IntrinsicHeight(
              child: Row(
                children: [
                  if (negativeActionPressed != null &&
                      negativeActionTitle != null) ...[
                    _buildDialogAction(negativeActionTitle,
                        textStyleNegativeTitle ?? const TextStyle(fontSize: 16.0),
                        onTap: () {
                      Navigator.pop(builderContext);
                      negativeActionPressed();
                    }),
                    VerticalDivider(
                        thickness: 1,
                        width: 0,
                        color: CustomColor.dialogDivider),
                  ],
                  _buildDialogAction(
                      positiveActionTitle,
                      textStylePositiveTitle ?? TextStyle(fontSize: 16.0, color: CustomColor.dialogPositiveAction), onTap: () {
                    Navigator.pop(builderContext);
                    positiveActionPressed();
                  })
                ],
              ),
            )
          ],
        ),
      );
    },
  );
}

Widget _buildDialogAction(String text, TextStyle textStyle,
    {required Function() onTap}) {
  return Expanded(
      child: InkWell(
          onTap: () => onTap(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: CustomSpacing.space16),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: textStyle,
            ),
          )));
}
