import 'package:flutter/material.dart';
import '../../flutter_package_for_personal.dart';
import '../image/custom_network_image.dart';

class CustomButtomWithImage extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool isSelect;
  final Color? textcolor;
  final String imgurl;

  const CustomButtomWithImage({
    super.key,
    required this.title,
    required this.onTap,
    required this.imgurl,
    this.isSelect = false,
    this.textcolor = Constants.black, // Default value for isSelect
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
        margin: const EdgeInsets.only(top: 5, bottom: 5, right: 10),
        decoration: BoxDecoration(
          color: Constants.borderColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Constants.borderColor),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomNetworkImage(
              imageUrl: imgurl,
              defaultIcon: Icons.error_outline_rounded,
            ),
            const SizedBox(width: 6),
            customText(
              // monst: true,
              title: title,
              fontWeight: FontWeight.bold,
              color: textcolor,
              fontSize: 14,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButtonForAddWorkSpace extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final String subtitle;
  final bool isSelect;
  final Color? textcolor;
  final String imgurl;

  const CustomButtonForAddWorkSpace({
    super.key,
    required this.title,
    required this.onTap,
    required this.imgurl,
    required this.subtitle,
    this.isSelect = false,
    this.textcolor = Constants.black, // Default value for isSelect
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Constants.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Constants.lightdull,
              spreadRadius: 2,
              blurRadius: 8,
              offset: Offset(0, 6), // changes position of shadow
            ),
          ],
        ),
        child: ListTile(
          //   onTap: onTap,
          dense: true,
          contentPadding: EdgeInsets.zero,
          leading: CustomNetworkImage(
            imageUrl: imgurl,
            defaultIcon: Icons.error_outline_rounded,
          ),
          title: customText(
            // monst: true,
            title: title,
            fontWeight: FontWeight.bold,
            color: textcolor,
            fontSize: 16,
          ),
          subtitle: customText(
            // monst: true,
            title: subtitle,
            // fontWeight: FontWeight.bold,
            color: textcolor,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
