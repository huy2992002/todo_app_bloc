import 'package:flutter/material.dart';

class AppColors {
  static final Color h000000 = HexColor.fromHex("#000000");
  static final Color hFFFFFF = HexColor.fromHex("#FFFFFF");
  static final Color hFFFDF4 = HexColor.fromHex("#FFFDF4");
  static final Color hFFEC4B = HexColor.fromHex("#FFEC4B");
  static final Color h444444 = HexColor.fromHex("#444444");
  static final Color hEDEAEA = HexColor.fromHex("#EDEAEA");
  static final Color h00000040 = HexColor.fromHex("#000000").withOpacity(0.4);
  static final Color h00000050 = HexColor.fromHex("#000000").withOpacity(0.5);
}

extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
