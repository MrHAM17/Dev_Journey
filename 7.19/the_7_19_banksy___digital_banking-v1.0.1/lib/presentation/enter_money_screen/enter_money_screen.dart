import 'package:flutter/material.dart';
import 'package:the_7_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EnterMoneyScreen extends StatelessWidget {
  EnterMoneyScreen({Key? key}) : super(key: key);

  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 18.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse8130x130,
                      height: 130.adaptSize,
                      width: 130.adaptSize,
                      radius: BorderRadius.circular(65.h)),
                  SizedBox(height: 6.v),
                  Text("Kate Morgan", style: theme.textTheme.headlineSmall),
                  SizedBox(height: 2.v),
                  Text("159-107-1365",
                      style: CustomTextStyles.bodySmallOnPrimaryContainer),
                  SizedBox(height: 23.v),
                  Text("60.00", style: theme.textTheme.displayLarge),
                  SizedBox(height: 32.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: CustomTextFormField(
                          controller: messageController,
                          hintText: "Type your message",
                          textInputAction: TextInputAction.done)),
                  SizedBox(height: 39.v),
                  _buildFrame(context),
                  SizedBox(height: 25.v),
                  _buildJonathanAnderson(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildContinue(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 68.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgFavoriteOnprimary,
            margin: EdgeInsets.only(left: 24.h, top: 6.v, bottom: 6.v)),
        centerTitle: true,
        title: AppbarTitle(text: "Money Transfer "),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgPlus,
              margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 6.v),
              onTap: () {
                onTapPlus(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 24.h, right: 30.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Select Card", style: CustomTextStyles.headlineSmallExtraBold),
          Padding(
              padding: EdgeInsets.only(top: 5.v, bottom: 4.v),
              child:
                  Text("Add Card", style: CustomTextStyles.titleMediumPrimary))
        ]));
  }

  /// Section Widget
  Widget _buildJonathanAnderson(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 24.h),
            child: IntrinsicWidth(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                  child: GestureDetector(
                      onTap: () {
                        onTapCard(context);
                      },
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 23.v),
                          decoration:
                              AppDecoration.gradientPrimaryToOnErrorContainer,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Jonathan Anderson",
                                    style: theme.textTheme.labelLarge),
                                SizedBox(height: 30.v),
                                Text("1222 3443 9881 1222",
                                    style:
                                        CustomTextStyles.titleMediumOnPrimary),
                                SizedBox(height: 30.v),
                                Padding(
                                    padding: EdgeInsets.only(right: 4.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 1.v),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Balance",
                                                        style: theme.textTheme
                                                            .labelSmall),
                                                    SizedBox(height: 3.v),
                                                    Text(" 31,250",
                                                        style: theme.textTheme
                                                            .labelLarge)
                                                  ])),
                                          CustomImageView(
                                              imagePath: ImageConstant.imgUser,
                                              height: 20.adaptSize,
                                              width: 20.adaptSize,
                                              margin:
                                                  EdgeInsets.only(top: 12.v))
                                        ]))
                              ])))),
              Expanded(
                  child: GestureDetector(
                      onTap: () {
                        onTapCard1(context);
                      },
                      child: Container(
                          margin: EdgeInsets.only(left: 20.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 23.v),
                          decoration: AppDecoration.gradientTealToTeal,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(bottom: 2.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Jonathan Anderson",
                                              style:
                                                  theme.textTheme.labelLarge),
                                          SizedBox(height: 30.v),
                                          Text("1222 3443 9881 1222",
                                              style: CustomTextStyles
                                                  .titleMediumOnPrimary),
                                          SizedBox(height: 30.v),
                                          Text("Balance",
                                              style:
                                                  theme.textTheme.labelSmall),
                                          SizedBox(height: 3.v),
                                          Text(" 31,250",
                                              style: theme.textTheme.labelLarge)
                                        ])),
                                CustomImageView(
                                    imagePath: ImageConstant.imgUser,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 112.v, right: 4.h))
                              ]))))
            ]))));
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
        text: "Continue".toUpperCase(),
        margin: EdgeInsets.only(left: 27.h, right: 21.h, bottom: 29.v),
        onPressed: () {
          onTapContinue(context);
        });
  }

  /// Navigates to the addPersonScreen when the action is triggered.
  onTapPlus(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addPersonScreen);
  }

  /// Navigates to the cardDetailsScreen when the action is triggered.
  onTapCard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cardDetailsScreen);
  }

  /// Navigates to the cardDetailsScreen when the action is triggered.
  onTapCard1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cardDetailsScreen);
  }

  /// Navigates to the sendMoneyEnterPasswordScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sendMoneyEnterPasswordScreen);
  }
}
