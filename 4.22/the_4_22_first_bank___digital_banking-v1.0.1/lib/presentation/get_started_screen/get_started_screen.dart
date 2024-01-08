import 'controller/get_started_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_4_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/custom_outlined_button.dart';
import 'package:the_4_22_first_bank___digital_banking/domain/googleauth/google_auth_helper.dart';

class GetStartedScreen extends GetWidget<GetStartedController> {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 16.h, top: 123.v, right: 16.h),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("msg_lets_get_started".tr,
                          style: TextStyle(
                              color: appTheme.blueGray900,
                              fontSize: 28.fSize,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600))),
                  SizedBox(height: 14.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                          width: 220.h,
                          child: Text("msg_find_the_right_and".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: appTheme.blueGray40001,
                                  fontSize: 14.fSize,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500)))),
                  SizedBox(height: 21.v),
                  _buildLoginButton(),
                  SizedBox(height: 16.v),
                  _buildRegisterButton(),
                  SizedBox(height: 26.v),
                  Text("msg_or_use_instant_sign".tr,
                      style: TextStyle(
                          color: appTheme.blueGray400,
                          fontSize: 12.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700)),
                  SizedBox(height: 24.v),
                  _buildSignWithGoogleButton(),
                  SizedBox(height: 24.v),
                  _buildSignWithAppleButton(),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildLoginButton() {
    return CustomElevatedButton(
        text: "lbl_login".tr,
        buttonStyle: CustomButtonStyles.fillIndigo,
        onPressed: () {
          onTapLoginButton();
        });
  }

  /// Section Widget
  Widget _buildRegisterButton() {
    return CustomElevatedButton(
        text: "lbl_register".tr,
        buttonStyle: CustomButtonStyles.fillIndigo,
        onPressed: () {
          onTapRegisterButton();
        });
  }

  /// Section Widget
  Widget _buildSignWithGoogleButton() {
    return CustomOutlinedButton(
        height: 50.v,
        text: "msg_sign_with_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogle,
                height: 32.adaptSize,
                width: 32.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineBlueGray,
        onPressed: () {
          onTapSignWithGoogleButton();
        });
  }

  /// Section Widget
  Widget _buildSignWithAppleButton() {
    return CustomOutlinedButton(
        height: 50.v,
        text: "lbl_sign_with_apple".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgUser,
                height: 32.adaptSize,
                width: 32.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineBlueGray);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLoginButton() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the registersScreen when the action is triggered.
  onTapRegisterButton() {
    Get.toNamed(
      AppRoutes.registersScreen,
    );
  }

  onTapSignWithGoogleButton() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
