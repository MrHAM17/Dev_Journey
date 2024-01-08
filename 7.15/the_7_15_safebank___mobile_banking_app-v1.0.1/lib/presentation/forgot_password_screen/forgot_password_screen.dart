import 'package:flutter/material.dart';
import 'package:the_7_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_elevated_button.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

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
                                horizontal: 24.h, vertical: 59.v),
                            child: Column(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgGroup205,
                                  height: 210.v,
                                  width: 280.h),
                              SizedBox(height: 41.v),
                              Text("Forget Password",
                                  style: CustomTextStyles.titleLargeSemiBold_1),
                              SizedBox(height: 17.v),
                              Container(
                                  width: 245.h,
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 41.h),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text:
                                                "Please enter your email address to\nreceive a ",
                                            style: CustomTextStyles
                                                .titleSmallGray500_1
                                                .copyWith(height: 1.50)),
                                        TextSpan(
                                            text: "verification code.",
                                            style: CustomTextStyles
                                                .titleSmallPrimary)
                                      ]),
                                      textAlign: TextAlign.center)),
                              SizedBox(height: 23.v),
                              CustomTextFormField(
                                  controller: emailController,
                                  hintText: "xyz@gmail.com",
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.emailAddress,
                                  borderDecoration:
                                      TextFormFieldStyleHelper.outlineGray),
                              SizedBox(height: 20.v),
                              CustomElevatedButton(
                                  text: "Send Email",
                                  onPressed: () {
                                    onTapSendEmail(context);
                                  }),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 59.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgUser,
              margin: EdgeInsets.fromLTRB(24.h, 7.v, 24.h, 8.v))
        ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the verifyEmailScreen when the action is triggered.
  onTapSendEmail(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.verifyEmailScreen);
  }
}
