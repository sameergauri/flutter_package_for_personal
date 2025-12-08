// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import '../../flutter_package_for_personal.dart';

class CustomfloatingActionButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final Color? buttonColor;
  final Color? textColor;
  final bool? isBorder;

  const CustomfloatingActionButton({
    super.key,
    required this.onTap,
    required this.title,
    this.buttonColor,
    this.textColor,
    this.isBorder,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor ?? Constants.darkBlue,
          borderRadius: BorderRadius.circular(8),
          border: isBorder != null && isBorder != false
              ? Border.all(color: Constants.darkBlue)
              : const Border(),
        ),
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        child: customText(
          title: title,
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: textColor ?? Colors.white,
        ),
      ),
    );
  }
}
