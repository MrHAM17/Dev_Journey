import 'package:flutter/material.dart';
import 'package:the_7_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/custom_switch.dart';

class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  bool isSelectedSwitch3 = false;

  bool isSelectedSwitch4 = false;

  bool isSelectedSwitch5 = false;

  bool isSelectedSwitch6 = false;

  bool isSelectedSwitch7 = false;

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
        text: "Notifications ",
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
              "Money Receive",
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 8.v),
            Text(
              "If anyone sent you money",
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
        CustomSwitch(
          margin: EdgeInsets.symmetric(vertical: 11.v),
          value: isSelectedSwitch,
          onChange: (value) {
            isSelectedSwitch = value;
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
              "Card Activation",
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 8.v),
            Text(
              "If card active",
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
        CustomSwitch(
          margin: EdgeInsets.only(
            top: 13.v,
            bottom: 10.v,
          ),
          value: isSelectedSwitch1,
          onChange: (value) {
            isSelectedSwitch1 = value;
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
              "Update Feature",
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 8.v),
            Text(
              "If any new update come",
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
        CustomSwitch(
          margin: EdgeInsets.symmetric(vertical: 11.v),
          value: isSelectedSwitch2,
          onChange: (value) {
            isSelectedSwitch2 = value;
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
              "Cash In",
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 9.v),
            Text(
              "If any cash in your card",
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
        CustomSwitch(
          margin: EdgeInsets.only(
            top: 13.v,
            bottom: 11.v,
          ),
          value: isSelectedSwitch3,
          onChange: (value) {
            isSelectedSwitch3 = value;
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
              "Money Request",
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 8.v),
            Text(
              "If anyone sent you money request",
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
        CustomSwitch(
          margin: EdgeInsets.symmetric(vertical: 11.v),
          value: isSelectedSwitch4,
          onChange: (value) {
            isSelectedSwitch4 = value;
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
              "Money Trasfer",
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 7.v),
            Text(
              "If you sent money to somone",
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
        CustomSwitch(
          margin: EdgeInsets.symmetric(vertical: 11.v),
          value: isSelectedSwitch5,
          onChange: (value) {
            isSelectedSwitch5 = value;
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
              "Number Notification",
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 9.v),
            Text(
              "Send notification to your number",
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
        CustomSwitch(
          margin: EdgeInsets.only(
            top: 13.v,
            bottom: 11.v,
          ),
          value: isSelectedSwitch6,
          onChange: (value) {
            isSelectedSwitch6 = value;
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
              "Email Notification",
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 9.v),
            Text(
              "Send notification to your email",
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
        CustomSwitch(
          margin: EdgeInsets.only(
            top: 13.v,
            bottom: 11.v,
          ),
          value: isSelectedSwitch7,
          onChange: (value) {
            isSelectedSwitch7 = value;
          },
        ),
      ],
    );
  }
}
