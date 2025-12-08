import 'package:flutter/material.dart';
import '../global/custom_icon_url.dart';

class CustomNetworkImage extends StatelessWidget {
  final String imageUrl;
  final IconData defaultIcon;
  final double? height;
  final double? width;
  final Color? color;

  const CustomNetworkImage({
    super.key,
    required this.imageUrl,
    required this.defaultIcon,
    this.height,
    this.width,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      height: height ?? 20,
      width: width,
      color: color,
      errorBuilder: (context, error, stackTrace) {
        return defaultIcon == Icons.home
            ? Image.network(CustomIconUrl.companyicon, height: 30, width: 30)
            : Icon(defaultIcon, size: 30);
      },
    );
  }
}
