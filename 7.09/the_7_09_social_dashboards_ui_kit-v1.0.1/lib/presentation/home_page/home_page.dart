import '../home_page/widgets/eightytwo_item_widget.dart';
import '../home_page/widgets/sixtyseven_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_7_09_social_dashboards_ui_kit/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_7_09_social_dashboards_ui_kit/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_7_09_social_dashboards_ui_kit/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_7_09_social_dashboards_ui_kit/widgets/app_bar/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 16.v),
                  _buildFeatured(context),
                  SizedBox(height: 36.v),
                  _buildEightyTwo(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 68.v,
        leadingWidth: 66.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgRewind,
            margin: EdgeInsets.only(left: 28.h, top: 15.v, bottom: 15.v),
            onTap: () {
              onTapRewind(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "Home"),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgIconNotification,
              margin: EdgeInsets.symmetric(horizontal: 28.h, vertical: 15.v))
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFeatured(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 28.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Featured", style: theme.textTheme.titleMedium),
              SizedBox(height: 15.v),
              SizedBox(
                  height: 49.v,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 18.h);
                      },
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return SixtysevenItemWidget();
                      }))
            ])));
  }

  /// Section Widget
  Widget _buildEightyTwo(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.h),
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 18.v);
                },
                itemCount: 2,
                itemBuilder: (context, index) {
                  return EightytwoItemWidget();
                })));
  }

  /// Navigates to the searchTabContainerScreen when the action is triggered.
  onTapRewind(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchTabContainerScreen);
  }
}
