import 'package:flutter/material.dart';
import 'package:the_7_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/custom_elevated_button.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({Key? key}) : super(key: key);

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 26.v),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Enter a new password",
                                      style: theme.textTheme.bodyLarge)),
                              SizedBox(height: 47.v),
                              CustomTextFormField(
                                  controller: newpasswordController,
                                  hintText: "New Password",
                                  textInputType: TextInputType.visiblePassword,
                                  suffix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 18.v, 16.h, 18.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgIcon,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize)),
                                  suffixConstraints:
                                      BoxConstraints(maxHeight: 52.v),
                                  obscureText: true,
                                  contentPadding: EdgeInsets.only(
                                      left: 16.h, top: 14.v, bottom: 14.v)),
                              SizedBox(height: 20.v),
                              CustomTextFormField(
                                  controller: confirmpasswordController,
                                  hintText: "Confirm Password",
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  suffix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 18.v, 16.h, 18.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgIcon,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize)),
                                  suffixConstraints:
                                      BoxConstraints(maxHeight: 52.v),
                                  obscureText: true,
                                  contentPadding: EdgeInsets.only(
                                      left: 16.h, top: 14.v, bottom: 14.v)),
                              Spacer(flex: 27),
                              CustomElevatedButton(
                                  text: "Confirm",
                                  onPressed: () {
                                    onTapConfirm(context);
                                  }),
                              Spacer(flex: 72)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "Reset Password"));
  }

  /// Navigates back to the previous screen.
  onTapArrowDown(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the exploreShopScreen when the action is triggered.
  onTapConfirm(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.exploreShopScreen);
  }
}
