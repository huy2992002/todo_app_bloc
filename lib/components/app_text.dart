import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app_bloc/resources/app_colors.dart';

class AppText extends StatelessWidget {
  final String title;

  final int? maxLines;

  final TextDecoration? decoration;

  final Color? titleColor;

  final double? titleSize;

  final FontWeight? fontWeight;

  final FontStyle? fontStyle;

  final TextAlign? textAlign;

  final String? fontFamily;

  const AppText({
    super.key,
    required this.title,
    this.decoration,
    this.maxLines,
    this.titleColor,
    this.titleSize,
    this.fontWeight,
    this.fontStyle,
    this.textAlign,
    this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        decoration: decoration,
        decorationColor: titleColor ?? AppColors.h000000,
        fontFamily: fontFamily ?? GoogleFonts.rubik().fontFamily,
        fontSize: titleSize ?? 13,
        color: titleColor ?? AppColors.h000000,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontStyle: fontStyle ?? FontStyle.normal,
        height: 4 / 3,
      ),
    );
  }
}
