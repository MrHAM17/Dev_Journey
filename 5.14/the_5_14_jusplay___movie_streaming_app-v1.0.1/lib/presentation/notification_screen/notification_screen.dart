import '../notification_screen/widgets/notification_item_widget.dart';
import 'models/notification_item_model.dart';
import 'models/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_title.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';
import 'provider/notification_provider.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  NotificationScreenState createState() => NotificationScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => NotificationProvider(),
        child: NotificationScreen());
  }
}

class NotificationScreenState extends State<NotificationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 25.v),
                child: Consumer<NotificationProvider>(
                    builder: (context, provider, child) {
                  return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 16.v);
                      },
                      itemCount: provider
                          .notificationModelObj.notificationItemList.length,
                      itemBuilder: (context, index) {
                        NotificationItemModel model = provider
                            .notificationModelObj.notificationItemList[index];
                        return NotificationItemWidget(model);
                      });
                }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 51.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 7.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_notifications".tr));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
