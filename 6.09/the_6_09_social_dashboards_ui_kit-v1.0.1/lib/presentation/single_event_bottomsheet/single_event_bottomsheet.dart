import 'notifier/single_event_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_09_social_dashboards_ui_kit/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SingleEventBottomsheet extends ConsumerStatefulWidget {
  const SingleEventBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  SingleEventBottomsheetState createState() => SingleEventBottomsheetState();
}

class SingleEventBottomsheetState
    extends ConsumerState<SingleEventBottomsheet> {
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
