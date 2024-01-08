import 'notifier/notification_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_10_social___social_networking/core/app_export.dart';
import 'package:the_6_10_social___social_networking/widgets/custom_switch.dart';

class NotificationScreen extends ConsumerStatefulWidget {
  const NotificationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationScreenState createState() => NotificationScreenState();
}

class NotificationScreenState extends ConsumerState<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.deepPurpleA200,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 16.h,
            top: 168.v,
            right: 16.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgNotificationBell,
                height: 161.v,
                width: 146.h,
                alignment: Alignment.center,
              ),
              SizedBox(height: 45.v),
              Text(
                "msg_turn_on_notifications".tr,
                style: CustomTextStyles.headlineLargePrimary,
              ),
              SizedBox(height: 18.v),
              Container(
                width: 339.h,
                margin: EdgeInsets.only(right: 42.h),
                child: Text(
                  "msg_turn_on_notifications2".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleMedium!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 22.v),
              _buildNotifications(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNotifications(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            "lbl_notifications".tr,
            style: theme.textTheme.titleMedium,
          ),
        ),
        Consumer(
          builder: (context, ref, _) {
            return CustomSwitch(
              margin: EdgeInsets.only(bottom: 3.v),
              value: ref.watch(notificationNotifier).isSelectedSwitch,
              onChange: (value) {
                ref.read(notificationNotifier.notifier).changeSwitchBox1(value);
              },
            );
          },
        ),
      ],
    );
  }
}
