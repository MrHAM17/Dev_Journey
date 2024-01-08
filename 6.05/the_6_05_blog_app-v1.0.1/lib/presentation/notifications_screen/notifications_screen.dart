import '../notifications_screen/widgets/notifications_item_widget.dart';
import 'models/notifications_item_model.dart';
import 'notifier/notifications_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_05_blog_app/core/app_export.dart';
import 'package:the_6_05_blog_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_6_05_blog_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_6_05_blog_app/widgets/app_bar/custom_app_bar.dart';

class NotificationsScreen extends ConsumerStatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  NotificationsScreenState createState() => NotificationsScreenState();
}

class NotificationsScreenState extends ConsumerState<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 20.h, top: 20.v, right: 20.h),
                child: Consumer(builder: (context, ref, _) {
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

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
