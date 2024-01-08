import 'package:flutter/material.dart';
import 'package:the_5_21_vertex___real_estate_app/core/app_export.dart';

// ignore: must_be_immutable
class AppbarSubtitleFive extends StatelessWidget {
  AppbarSubtitleFive({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: theme.textTheme.labelMedium!.copyWith(
            color: appTheme.blueGray500,
          ),
        ),
      ),
    );
  }
}
