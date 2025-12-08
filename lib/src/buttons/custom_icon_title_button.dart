import 'package:flutter/material.dart';
import '../../flutter_package_for_personal.dart';


class CustomIconTitleButton extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onTap;
  final String title;
  final double height;
  final double width;
  final Color? iconColor;
  final Color? textcolor;
  final double? fontsize;
  final double? imagesize;

  const CustomIconTitleButton({
    super.key,
    required this.imageUrl,
    required this.onTap,
    required this.title,
    this.height = 25.0,
    this.width = 25.0,
    this.iconColor = Constants.black,
    this.textcolor = Constants.black,
    this.fontsize = 12,
    this.imagesize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            /*   height: height,
            width: width, */
            padding: const EdgeInsets.all(4),
            child: Image.network(
              imageUrl,
              fit: BoxFit.contain,
              color: iconColor,
              height: imagesize,
              //color: Constants.subtitleclr,
            ),
          ),
          const SizedBox(width: 2),
          customText(title: title, fontSize: fontsize, color: textcolor),
        ],
      ),
    );
  }
}
