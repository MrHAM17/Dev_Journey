import 'notifier/signup_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_04_health_care/core/app_export.dart';
import 'package:the_6_04_health_care/core/utils/validation_functions.dart';
import 'package:the_6_04_health_care/widgets/custom_elevated_button.dart';
import 'package:the_6_04_health_care/widgets/custom_text_form_field.dart';

class SignupScreen extends ConsumerStatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  SignupScreenState createState() => SignupScreenState();
}

// ignore_for_file: must_be_immutable
class SignupScreenState extends ConsumerState<SignupScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.cyan300,
            resizeToAvoidBottomInset: false,
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
                                horizontal: 20.h, vertical: 35.v),
                            child: Column(children: [
                              SizedBox(height: 70.v),
                              _buildPageTitle(context),
                              SizedBox(height: 29.v),
                              _buildFullName(context),
                              SizedBox(height: 8.v),
                              _buildEmail(context),
                              SizedBox(height: 8.v),
                              _buildPassword(context),
                              SizedBox(height: 8.v),
                              _buildPassword1(context),
                              SizedBox(height: 39.v),
                              _buildSignUp(context),
                              Spacer(),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtHaveanaccount(context);
                                  },
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_have_an_account2".tr,
                                            style: CustomTextStyles
                                                .bodySmallPrimary),
                                        TextSpan(text: " "),
                                        TextSpan(
                                            text: "lbl_sign_in".tr,
                                            style: CustomTextStyles
                                                .labelLargePrimaryBold)
                                      ]),
                                      textAlign: TextAlign.left))
                            ])))))));
  }

  /// Section Widget
  Widget _buildPageTitle(BuildContext context) {
    return Column(children: [
      CustomImageView(
          imagePath: ImageConstant.imgHiDocLogo42x115,
          height: 42.v,
          width: 115.h),
      SizedBox(height: 27.v),
      Text("msg_let_s_get_started".tr,
          style: CustomTextStyles.titleMediumOnPrimaryContainer),
      SizedBox(height: 10.v),
      Text("msg_create_an_new_account".tr,
          style: CustomTextStyles.labelLargeGray50)
    ]);
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return CustomTextFormField(
          controller: ref.watch(signupNotifier).fullNameController,
          hintText: "lbl_full_name".tr,
          prefix: Container(
              margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgLock,
                  height: 24.adaptSize,
                  width: 24.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 48.v),
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          });
    });
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return CustomTextFormField(
          controller: ref.watch(signupNotifier).emailController,
          hintText: "lbl_your_email".tr,
          textInputType: TextInputType.emailAddress,
          prefix: Container(
              margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgSystemIcon,
                  height: 24.adaptSize,
                  width: 24.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 48.v),
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          });
    });
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return CustomTextFormField(
          controller: ref.watch(signupNotifier).passwordController,
          hintText: "lbl_password".tr,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
              margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgLocation,
                  height: 24.adaptSize,
                  width: 24.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 48.v),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true);
    });
  }

  /// Section Widget
  Widget _buildPassword1(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return CustomTextFormField(
          controller: ref.watch(signupNotifier).passwordController1,
          hintText: "lbl_password_again".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
              margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgLocation,
                  height: 24.adaptSize,
                  width: 24.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 48.v),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true);
    });
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_sign_up".tr,
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: CustomTextStyles.titleSmallTeal300);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtHaveanaccount(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
