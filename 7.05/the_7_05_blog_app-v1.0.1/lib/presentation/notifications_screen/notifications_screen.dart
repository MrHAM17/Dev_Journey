import '../notifications_screen/widgets/notifications_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_05_blog_app/core/app_export.dart';
import 'package:the_7_05_blog_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_7_05_blog_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_7_05_blog_app/widgets/app_bar/custom_app_bar.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 20.h, top: 20.v, right: 20.h),
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return Opacity(
                          opacity: 0.1,
                          child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 4.0.v),
                              child: SizedBox(
                                  width: 335.h,
                                  child: Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: appTheme.black900
                                          .withOpacity(0.39)))));
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return NotificationsItemWidget();
                    }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 36.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 20.h, top: 18.v, bottom: 21.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "Activity", margin: EdgeInsets.only(left: 133.h)));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
