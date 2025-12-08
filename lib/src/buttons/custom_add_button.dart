import 'package:flutter/material.dart';
import '../../flutter_package_for_personal.dart';

class CustomAddButton extends StatelessWidget {
  final String title;
  final Function onTab;
  final Color textcolor;
  final Color buttoncolor;
  const CustomAddButton({
    super.key,
    required this.title,
    required this.onTab,
    this.textcolor = Constants.darkBlue,
    this.buttoncolor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTab();
      },
      child: Container(
        margin: const EdgeInsets.only(top: 8, bottom: 8),
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: buttoncolor,
          boxShadow: [
            BoxShadow(
              offset: const Offset(1, 1),
              blurStyle: BlurStyle.outer,
              color: Colors.grey.shade400,
              blurRadius: 2.1,
            ),
          ],
        ),
        child: customText(title: title, color: textcolor),
      ),
    );
  }
}
