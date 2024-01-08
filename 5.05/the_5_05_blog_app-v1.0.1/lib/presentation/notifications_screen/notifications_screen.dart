import '../notifications_screen/widgets/notifications_item_widget.dart';
import 'models/notifications_item_model.dart';
import 'models/notifications_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_05_blog_app/core/app_export.dart';
import 'package:the_5_05_blog_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_5_05_blog_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_5_05_blog_app/widgets/app_bar/custom_app_bar.dart';
import 'provider/notifications_provider.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  NotificationsScreenState createState() => NotificationsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => NotificationsProvider(),
        child: NotificationsScreen());
  }
}

class NotificationsScreenState extends State<NotificationsScreen> {
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
                padding: EdgeInsets.only(left: 20.h, top: 20.v, right: 20.h),
                child: Consumer<NotificationsProvider>(
                    builder: (context, provider, child) {
                  return ListView.separated(
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
                      itemCount: provider
                          .notificationsModelObj.notificationsItemList.length,
                      itemBuilder: (context, index) {
                        NotificationsItemModel model = provider
                            .notificationsModelObj.notificationsItemList[index];
                        return NotificationsItemWidget(model);
                      });
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
            text: "lbl_activity".tr, margin: EdgeInsets.only(left: 133.h)));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
