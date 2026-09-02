import 'package:flutter/material.dart';

class ContainerWithCircleIconHeaderSubheadingSubtext extends StatelessWidget {
  final IconData? icon;
  final Color? iconBackgroundColor;
  final Color? iconColor;

  final String? headerText;
  final Color? headingColor;
  final double? headerFontSize; 

  final String? subheadingText;
  final Color? subheadingColor;
  final double? subheadingFontSize;

  final String? subtext;
  final Color? subtextColor;
  final double? subtextFontSize;

  final IconData? trailingIcon;
  final Color? trailingIconColor;
  final double? trailingIconSize;
  


  final double containerHeight;
  final double containerWidth;
  final Color containerColor;
  final double containerBorderRadius;
  final List<BoxShadow> containerBoxShadow;
  final Color containerBorderColor;


  

  const ContainerWithCircleIconHeaderSubheadingSubtext({
    super.key,
    this.icon,
    this.iconBackgroundColor,
    this.iconColor,
    this.headerText, 
    this.headingColor,
    this.headerFontSize,
    this.subheadingText,
    this.subheadingColor,
    this.subheadingFontSize,
    this.subtext,
    this.subtextColor,
    this.subtextFontSize,
    this.trailingIcon,
    this.trailingIconColor,
    this.trailingIconSize,
    required this.containerHeight,
    required this.containerWidth,
    required this.containerColor,
    required this.containerBorderRadius,
    required this.containerBoxShadow,
    required this.containerBorderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
      child: Container(
        height: containerHeight,
        width: containerWidth,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(containerBorderRadius),
          boxShadow: containerBoxShadow,
          border: Border.all(color: containerBorderColor),
        ),
      
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if(icon != null)
             Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container (
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: iconBackgroundColor,
                ),
                child: Icon(icon, color: iconColor),
              ),
            ),
            SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 14, 0, 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (headerText != null) Padding(
                    padding: subtext == null ? const EdgeInsets.only(top: 5.0) : EdgeInsets.zero,
                    child: Text(headerText!, style: TextStyle(color: headingColor, fontSize: headerFontSize, fontWeight: FontWeight.bold)),
                  ),
                  if (subheadingText != null) Text(subheadingText!, style: TextStyle(color: subheadingColor, fontSize: subheadingFontSize)),
                  if (subtext != null) Padding(
                    padding: const EdgeInsets.only(top:  4.0),
                    child: Text(subtext!, style: TextStyle(color: subtextColor, fontSize: subtextFontSize)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
