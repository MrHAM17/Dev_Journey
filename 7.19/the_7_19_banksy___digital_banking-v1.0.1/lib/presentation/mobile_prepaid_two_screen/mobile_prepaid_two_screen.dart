import 'package:flutter/material.dart';
import 'package:the_7_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MobilePrepaidTwoScreen extends StatelessWidget {
  MobilePrepaidTwoScreen({Key? key}) : super(key: key);

  TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 34.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse113,
                      height: 60.adaptSize,
                      width: 60.adaptSize,
                      radius: BorderRadius.circular(30.h)),
                  SizedBox(height: 11.v),
                  Text("Adom Shafi", style: theme.textTheme.headlineSmall),
                  SizedBox(height: 4.v),
                  Text("01704889390",
                      style: CustomTextStyles.bodySmallOnPrimaryContainer),
                  SizedBox(height: 42.v),
                  Text("Enter The Ammount",
                      style: CustomTextStyles.headlineSmallExtraBold),
                  SizedBox(height: 10.v),
                  Text("Enter ammount you want to send",
                      style: theme.textTheme.bodyMedium),
                  SizedBox(height: 41.v),
                  CustomTextFormField(
                      controller: priceController,
                      hintText: "500",
                      hintStyle: CustomTextStyles.titleMedium18,
                      textInputAction: TextInputAction.done),
                  SizedBox(height: 40.v),
                  CustomElevatedButton(text: "Continue".toUpperCase()),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 68.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgFavoriteOnprimary,
            margin: EdgeInsets.only(left: 24.h, top: 6.v, bottom: 6.v)),
        centerTitle: true,
        title: AppbarTitle(text: "Mobile Prepaid"));
  }
}
