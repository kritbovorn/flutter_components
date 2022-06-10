import 'package:flutter/material.dart';

class TitleSectionComponent extends StatelessWidget {
  final String title;
  final Color? titleColor;
  final TextStyle? textStyle;
  final double? padding;
  const TitleSectionComponent({
    Key? key,
    required this.title,
    this.titleColor,
    this.textStyle,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: padding ?? 20, vertical: padding ?? 10),
      child: Text(
        title,
        style: textStyle ??
            Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.bold,
                color: titleColor ?? Colors.black87),
      ),
    );
  }
}
