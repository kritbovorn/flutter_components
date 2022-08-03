import 'package:flutter/material.dart';

class ButtonResponsive extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const ButtonResponsive({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: LayoutBuilder(
        builder: (context, constraints) {
          double w = constraints.maxWidth * 0.5;
          double h = constraints.maxHeight * 0.3;
          return ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: h * 0.9),
              minimumSize: Size(w, h),
              maximumSize: Size(w, h),
            ),
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
