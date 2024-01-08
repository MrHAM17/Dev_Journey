import 'package:flutter/material.dart';
import 'package:the_6_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_6_09_social_dashboards_ui_kit/widgets/custom_search_view.dart';

// ignore: must_be_immutable
class AppbarTitleSearchviewOne extends StatelessWidget {
  AppbarTitleSearchviewOne({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 271.h,
        controller: controller,
        hintText: "lbl_nass".tr,
      ),
    );
  }
}
