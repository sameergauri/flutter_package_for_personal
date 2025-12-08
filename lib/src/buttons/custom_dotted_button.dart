import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_package_for_personal/flutter_package_for_personal.dart';

class CustomDottedBorderButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool isSelect;
  final Color? textcolor;

  const CustomDottedBorderButton({
    super.key,
    required this.title,
    required this.onTap,
    this.isSelect = false,
    this.textcolor = Constants.black, // Default value for isSelect
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: DottedBorder(
            options: RectDottedBorderOptions(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
              strokeWidth: 1,
              dashPattern: const [4, 4],
              color: isSelect ? Constants.darkBlue : Constants.subtitleclr,
            ),
            child: customText(
              title: title,
              fontWeight: isSelect ? FontWeight.bold : FontWeight.normal,
              color: textcolor,
            ),
          ),
        ),
      ),
    );
  }
}
