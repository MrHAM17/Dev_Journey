import '../notifications_page/widgets/notifications_item_widget.dart';
import 'models/notifications_item_model.dart';
import 'notifier/notifications_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_10_social___social_networking/core/app_export.dart';
import 'package:the_6_10_social___social_networking/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_6_10_social___social_networking/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_6_10_social___social_networking/widgets/app_bar/custom_app_bar.dart';

class NotificationsPage extends ConsumerStatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  NotificationsPageState createState() => NotificationsPageState();
}

class NotificationsPageState extends ConsumerState<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 21.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl_notifications".tr,
                              style: theme.textTheme.headlineLarge)),
                      SizedBox(height: 32.v),
                      _buildNotifications(context)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowBackDeepPurpleA200,
            margin: EdgeInsets.only(left: 16.h, top: 13.v, bottom: 13.v),
            onTap: () {
              onTapArrowBack(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgPersonAddAlt1,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
              onTap: () {
                onTapPersonAddAltOne(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildNotifications(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return Padding(
                padding: EdgeInsets.symmetric(vertical: 10.5.v),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Divider(
                        height: 2.v,
                        thickness: 2.v,
                        color: theme.colorScheme.secondaryContainer)));
          },
          itemCount: ref
                  .watch(notificationsNotifier)
                  .notificationsModelObj
                  ?.notificationsItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            NotificationsItemModel model = ref
                    .watch(notificationsNotifier)
                    .notificationsModelObj
                    ?.notificationsItemList[index] ??
                NotificationsItemModel();
            return NotificationsItemWidget(model);
          });
    });
  }

  /// Navigates back to the previous screen.
  onTapArrowBack(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Opens a URL in the device's default web browser.
  ///
  /// The [context] parameter is the `BuildContext` of the widget that invoked the function.
  ///
  /// Throws an exception if the URL could not be launched.
  onTapPersonAddAltOne(BuildContext context) async {
    var url = 'https://accounts.google.com/';
    if (!await launchUrlString(url)) {
      throw 'Could not launch https://accounts.google.com/';
    }
  }
}
