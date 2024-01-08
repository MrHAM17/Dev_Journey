import 'models/single_event_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'provider/single_event_provider.dart';

// ignore_for_file: must_be_immutable
class SingleEventBottomsheet extends StatefulWidget {
  const SingleEventBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  SingleEventBottomsheetState createState() => SingleEventBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SingleEventProvider(),
      child: SingleEventBottomsheet(),
    );
  }
}

class SingleEventBottomsheetState extends State<SingleEventBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

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
