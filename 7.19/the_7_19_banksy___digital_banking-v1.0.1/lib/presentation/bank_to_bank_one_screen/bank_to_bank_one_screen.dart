import 'package:flutter/material.dart';
import 'package:the_7_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/custom_icon_button.dart';

class BankToBankOneScreen extends StatelessWidget {
  const BankToBankOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 33.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Select Bank To Send",
                          style: CustomTextStyles.headlineSmallExtraBold),
                      SizedBox(height: 10.v),
                      Text("Select a account to send money to other account",
                          style: theme.textTheme.bodyMedium),
                      SizedBox(height: 41.v),
                      _buildJonathanAnderson(context),
                      SizedBox(height: 24.v),
                      _buildCard(context),
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
        title: AppbarTitle(text: "Bank to Bank"));
  }

  /// Section Widget
  Widget _buildJonathanAnderson(BuildContext context) {
    return SizedBox(
        height: 200.v,
        width: 366.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          _buildCard(context),
          CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.fillOnPrimaryTL20,
              alignment: Alignment.bottomCenter,
              child:
                  CustomImageView(imagePath: ImageConstant.imgCheckmarkPrimary))
        ]));
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
        text: "Continue".toUpperCase(),
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 56.v),
        onPressed: () {
          onTapContinue(context);
        });
  }

  /// Common widget
  Widget _buildCard(
    BuildContext context, {
    Function? onTapCard,
  }) {
    return GestureDetector(
        onTap: () {
          onTapCard!.call();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 23.v),
            decoration: AppDecoration.gradientTealToTeal,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Jonathan Anderson", style: theme.textTheme.labelLarge),
              SizedBox(height: 30.v),
              Text("1222 3443 9881 1222",
                  style: CustomTextStyles.titleMediumOnPrimary),
              SizedBox(height: 30.v),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Balance",
                                  style: theme.textTheme.labelSmall),
                              SizedBox(height: 3.v),
                              Text(" 31,250", style: theme.textTheme.labelLarge)
                            ])),
                    CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(top: 12.v))
                  ])
            ])));
  }

  /// Navigates to the cardDetailsScreen when the action is triggered.
  onTapCard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cardDetailsScreen);
  }

  /// Navigates to the cardDetailsScreen when the action is triggered.
  onTapCard1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cardDetailsScreen);
  }

  /// Navigates to the bankToBankTwoScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bankToBankTwoScreen);
  }
}
