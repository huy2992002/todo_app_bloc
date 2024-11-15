import 'package:flutter/material.dart';
import 'package:todo_app_bloc/components/app_text.dart';
import 'package:todo_app_bloc/resources/app_colors.dart';

class AppElevatedButton extends StatelessWidget {
  AppElevatedButton({
    super.key,
    this.onPressed,
    this.height = 48.0,
    this.color,
    required this.text,
    this.textColor,
    this.fontSize = 16.0,
    this.icon,
    BorderRadius? borderRadius,
    this.padding = const EdgeInsets.symmetric(horizontal: 12.0),
    this.isDisable = false,
    Color? splashColor,
    Color? highlightColor,
  })  : borderRadius = borderRadius ?? BorderRadius.circular(10.0),
        splashColor = splashColor ?? AppColors.hDFBD43.withOpacity(0.4),
        highlightColor = highlightColor ?? AppColors.hDFBD43.withOpacity(0.5);

  final VoidCallback? onPressed;
  final double height;
  final Color? color;
  final String text;
  final Color? textColor;
  final double fontSize;
  final Icon? icon;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry padding;
  final bool isDisable;
  final Color splashColor;
  final Color highlightColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: borderRadius,
      surfaceTintColor: Colors.transparent,
      color: Colors.transparent,
      child: InkWell(
        borderRadius: borderRadius,
        onTap: isDisable ? null : onPressed,
        splashColor: splashColor,
        highlightColor: highlightColor,
        child: Ink(
          padding: padding,
          height: height,
          decoration: BoxDecoration(
            color: color ?? AppColors.hFFEC4B,
            borderRadius: borderRadius,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) ...[
                icon!,
                const SizedBox(width: 4.6),
              ],
              isDisable
                  ? Center(
                      child: SizedBox.square(
                        dimension: height - 22.0,
                        child: CircularProgressIndicator(
                            color: textColor, strokeWidth: 2.2),
                      ),
                    )
                  : AppText(
                      title: text,
                      titleColor: textColor ?? AppColors.hFFFFFF,
                      titleSize: fontSize,
                      fontWeight: FontWeight.w600,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
