import 'models/single_post_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'provider/single_post_provider.dart';

// ignore_for_file: must_be_immutable
class SinglePostBottomsheet extends StatefulWidget {
  const SinglePostBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  SinglePostBottomsheetState createState() => SinglePostBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SinglePostProvider(),
      child: SinglePostBottomsheet(),
    );
  }
}

class SinglePostBottomsheetState extends State<SinglePostBottomsheet> {
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
