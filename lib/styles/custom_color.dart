import 'package:flutter/material.dart';

class CustomColor {
  // background
  static Color bgPrimary = HexColor("FF7043");
  static Color bgSecondary = HexColor("EC407A");
  static Color bgSuccess = HexColor("46C880");
  static Color bgCreateAccount = HexColor("C2185B");
  static Color progressFinish = HexColor("00A197");

  //Dialog
  static Color dialogDivider = HexColor('3D3C3C43');
  static Color dialogContent = HexColor('505050');
  static Color dialogPositiveAction = HexColor('CD000C');

  // text
  static Color textPrimary = HexColor("3C3C3C");
  static Color textOnPrimary = HexColor("FFFFFF");
  static Color textSecondary = HexColor("9D9D9D");
  static Color text = HexColor("E0E0E0");

  // icon
  static Color iconPrimary = HexColor("00A197");

  // Text Field
  static Color textFieldError = HexColor("FFF3F0");
  static Color textIntro = HexColor("262626");
  static Color note = HexColor("75807E");

  // button
  static Color buttonPrimary = HexColor("00A197");
  static Color buttonPrimaryDisable = HexColor("E5AAB9");
  static Color buttonOnPrimary = HexColor("FFFFFF");
  static Color buttonSecondary = HexColor("F0F0F0");
  static Color buttonSecondaryDisable = HexColor("9D9D9D");
  static Color buttonBorderPrimary = HexColor("D2D2D2");
  static Color buttonThumbUp = HexColor("EF8E70");
  static Color buttonThumbDown = HexColor("51B2FF");
  static Color buttonNormal = HexColor("FBC24F");
  static Color buttonDisable = HexColor("D7D9D9");

  //Bottom sheet
  static Color bgBottomSheet = const Color.fromRGBO(239, 239, 244, 0.94);
  static Color bgPickerBottomSheet = const Color.fromRGBO(120, 120, 128, 0.2);

  // materialColor
  static MaterialColor white = MaterialColor(
    Colors.white.value,
    const <int, Color>{
      50: Colors.white,
      100: Colors.white,
      200: Colors.white,
      300: Colors.white,
      400: Colors.white,
      500: Colors.white,
      600: Colors.white,
      700: Colors.white,
      800: Colors.white,
      900: Colors.white,
    },
  );
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
