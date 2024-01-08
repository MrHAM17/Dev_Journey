import 'notifier/single_post_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_09_social_dashboards_ui_kit/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SinglePostBottomsheet extends ConsumerStatefulWidget {
  const SinglePostBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  SinglePostBottomsheetState createState() => SinglePostBottomsheetState();
}

class SinglePostBottomsheetState extends ConsumerState<SinglePostBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 168.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL32,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgIndicatorOnLight,
        height: 5.v,
        width: 38.h,
        alignment: Alignment.center,
      ),
    );
  }
}
