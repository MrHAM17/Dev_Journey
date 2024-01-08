import 'notifier/notifications_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/custom_switch.dart';

class NotificationsScreen extends ConsumerStatefulWidget {
  const NotificationsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationsScreenState createState() => NotificationsScreenState();
}

class NotificationsScreenState extends ConsumerState<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 35.v,
          ),
          child: Column(
            children: [
              _buildOne(context),
              SizedBox(height: 25.v),
              _buildTwo(context),
              SizedBox(height: 28.v),
              _buildThree(context),
              SizedBox(height: 25.v),
              _buildFour(context),
              SizedBox(height: 27.v),
              _buildFive(context),
              SizedBox(height: 27.v),
              _buildSix(context),
              SizedBox(height: 25.v),
              _buildSeven(context),
              SizedBox(height: 25.v),
              _buildEight(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 68.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgFavoriteOnprimary,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 6.v,
          bottom: 6.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_notifications".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_money_receive".tr,
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 8.v),
            Text(
              "msg_if_anyone_sent_you".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
        Consumer(
          builder: (context, ref, _) {
            return CustomSwitch(
              margin: EdgeInsets.symmetric(vertical: 11.v),
              value: ref.watch(notificationsNotifier).isSelectedSwitch,
              onChange: (value) {
                ref
                    .read(notificationsNotifier.notifier)
                    .changeSwitchBox1(value);
              },
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_card_activation".tr,
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 8.v),
            Text(
              "lbl_if_card_active".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
        Consumer(
          builder: (context, ref, _) {
            return CustomSwitch(
              margin: EdgeInsets.only(
                top: 13.v,
                bottom: 10.v,
              ),
              value: ref.watch(notificationsNotifier).isSelectedSwitch1,
              onChange: (value) {
                ref
                    .read(notificationsNotifier.notifier)
                    .changeSwitchBox2(value);
              },
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildThree(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_update_feature".tr,
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 8.v),
            Text(
              "msg_if_any_new_update".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
        Consumer(
          builder: (context, ref, _) {
            return CustomSwitch(
              margin: EdgeInsets.symmetric(vertical: 11.v),
              value: ref.watch(notificationsNotifier).isSelectedSwitch2,
              onChange: (value) {
                ref
                    .read(notificationsNotifier.notifier)
                    .changeSwitchBox3(value);
              },
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFour(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_cash_in".tr,
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 9.v),
            Text(
              "msg_if_any_cash_in_your".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
        Consumer(
          builder: (context, ref, _) {
            return CustomSwitch(
              margin: EdgeInsets.only(
                top: 13.v,
                bottom: 11.v,
              ),
              value: ref.watch(notificationsNotifier).isSelectedSwitch3,
              onChange: (value) {
                ref
                    .read(notificationsNotifier.notifier)
                    .changeSwitchBox4(value);
              },
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFive(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_money_request".tr,
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 8.v),
            Text(
              "msg_if_anyone_sent_you2".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
        Consumer(
          builder: (context, ref, _) {
            return CustomSwitch(
              margin: EdgeInsets.symmetric(vertical: 11.v),
              value: ref.watch(notificationsNotifier).isSelectedSwitch4,
              onChange: (value) {
                ref
                    .read(notificationsNotifier.notifier)
                    .changeSwitchBox5(value);
              },
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSix(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_money_trasfer".tr,
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 7.v),
            Text(
              "msg_if_you_sent_money".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
        Consumer(
          builder: (context, ref, _) {
            return CustomSwitch(
              margin: EdgeInsets.symmetric(vertical: 11.v),
              value: ref.watch(notificationsNotifier).isSelectedSwitch5,
              onChange: (value) {
                ref
                    .read(notificationsNotifier.notifier)
                    .changeSwitchBox6(value);
              },
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "msg_number_notification".tr,
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 9.v),
            Text(
              "msg_send_notification".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
        Consumer(
          builder: (context, ref, _) {
            return CustomSwitch(
              margin: EdgeInsets.only(
                top: 13.v,
                bottom: 11.v,
              ),
              value: ref.watch(notificationsNotifier).isSelectedSwitch6,
              onChange: (value) {
                ref
                    .read(notificationsNotifier.notifier)
                    .changeSwitchBox7(value);
              },
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "msg_email_notification".tr,
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 9.v),
            Text(
              "msg_send_notification2".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
        Consumer(
          builder: (context, ref, _) {
            return CustomSwitch(
              margin: EdgeInsets.only(
                top: 13.v,
                bottom: 11.v,
              ),
              value: ref.watch(notificationsNotifier).isSelectedSwitch7,
              onChange: (value) {
                ref
                    .read(notificationsNotifier.notifier)
                    .changeSwitchBox8(value);
              },
            );
          },
        ),
      ],
    );
  }
}
