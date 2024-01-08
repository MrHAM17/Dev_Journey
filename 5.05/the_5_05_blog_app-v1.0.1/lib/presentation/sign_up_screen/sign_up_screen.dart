import 'models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_05_blog_app/core/app_export.dart';
import 'package:the_5_05_blog_app/widgets/custom_outlined_button.dart';
import 'provider/sign_up_provider.dart';
import 'package:the_5_05_blog_app/domain/googleauth/google_auth_helper.dart';
import 'package:the_5_05_blog_app/domain/facebookauth/facebook_auth_helper.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  SignUpScreenState createState() => SignUpScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SignUpProvider(), child: SignUpScreen());
  }
}

class SignUpScreenState extends State<SignUpScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 30.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgDhiwiseBlackMonogram,
                      height: 59.adaptSize,
                      width: 59.adaptSize),
                  SizedBox(height: 43.v),
                  Text("lbl_register_now".tr,
                      style: theme.textTheme.headlineLarge),
                  SizedBox(height: 16.v),
                  _buildSignUpWithGoogle(context),
                  SizedBox(height: 14.v),
                  _buildSignUpWithFacebook(context),
                  SizedBox(height: 14.v),
                  _buildSignUpWithTwitter(context),
                  SizedBox(height: 14.v),
                  _buildSignUpWithApple(context),
                  SizedBox(height: 41.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 44.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("msg_already_have_an".tr,
                                style: theme.textTheme.bodyMedium),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtSignIn(context);
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(left: 6.h),
                                    child: Text("lbl_sign_in".tr,
                                        style: CustomTextStyles
                                            .bodyMediumPrimary)))
                          ])),
                  Spacer(),
                  SizedBox(height: 10.v),
                  Container(
                      width: 318.h,
                      margin: EdgeInsets.only(left: 4.h, right: 5.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_by_signing_up_you2".tr,
                                style: theme.textTheme.bodySmall),
                            TextSpan(
                                text: "msg_terms_of_service".tr,
                                style: CustomTextStyles.bodySmallPrimary),
                            TextSpan(
                                text: "msg_and_acknowledge".tr,
                                style: theme.textTheme.bodySmall!
                                    .copyWith(height: 1.50)),
                            TextSpan(
                                text: "lbl_privacy_policy".tr,
                                style: CustomTextStyles.bodySmallPrimary),
                            TextSpan(
                                text: "lbl_applies_to_you".tr,
                                style: theme.textTheme.bodySmall)
                          ]),
                          textAlign: TextAlign.center))
                ]))));
  }

  /// Section Widget
  Widget _buildSignUpWithGoogle(BuildContext context) {
    return CustomOutlinedButton(
        text: "msg_sign_up_with_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogle1,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        onPressed: () {
          onTapSignUpWithGoogle(context);
        });
  }

  /// Section Widget
  Widget _buildSignUpWithFacebook(BuildContext context) {
    return CustomOutlinedButton(
        text: "msg_sign_up_with_facebook".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebook1,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        onPressed: () {
          onTapSignUpWithFacebook(context);
        });
  }

  /// Section Widget
  Widget _buildSignUpWithTwitter(BuildContext context) {
    return CustomOutlinedButton(
        text: "msg_sign_up_with_twitter".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgTwitter1,
                height: 20.adaptSize,
                width: 20.adaptSize)));
  }

  /// Section Widget
  Widget _buildSignUpWithApple(BuildContext context) {
    return CustomOutlinedButton(
        text: "msg_sign_up_with_apple".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgAppleblacklogo1,
                height: 20.adaptSize,
                width: 20.adaptSize)));
  }

  onTapSignUpWithGoogle(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  onTapSignUpWithFacebook(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapTxtSignIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signInScreen,
    );
  }
}
