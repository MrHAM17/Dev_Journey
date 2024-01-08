import 'bloc/sign_in_bloc.dart';
import 'models/sign_in_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_05_blog_app/core/app_export.dart';
import 'package:the_3_05_blog_app/widgets/custom_outlined_button.dart';
import 'package:the_3_05_blog_app/domain/googleauth/google_auth_helper.dart';
import 'package:the_3_05_blog_app/domain/facebookauth/facebook_auth_helper.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SignInBloc>(
        create: (context) =>
            SignInBloc(SignInState(signInModelObj: SignInModel()))
              ..add(SignInInitialEvent()),
        child: SignInScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.h, vertical: 30.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgDhiwiseBlackMonogram,
                        height: 59.adaptSize,
                        width: 59.adaptSize),
                    SizedBox(height: 39.v),
                    Text("lbl_welcome_back".tr,
                        style: theme.textTheme.headlineLarge),
                    SizedBox(height: 20.v),
                    _buildSignInWithGoogle(context),
                    SizedBox(height: 14.v),
                    _buildSignInWithFacebook(context),
                    SizedBox(height: 14.v),
                    _buildSignInWithTwitter(context),
                    SizedBox(height: 14.v),
                    _buildSignInWithApple(context),
                    SizedBox(height: 39.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text("msg_don_t_have_an_account".tr,
                              style: theme.textTheme.bodyMedium)),
                      GestureDetector(
                          onTap: () {
                            onTapTxtSignUp(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text("lbl_sign_up".tr,
                                  style: CustomTextStyles.bodyMediumPrimary)))
                    ]),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildSignInWithGoogle(BuildContext context) {
    return CustomOutlinedButton(
        text: "msg_sign_in_with_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogle1,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        onPressed: () {
          onTapSignInWithGoogle(context);
        });
  }

  /// Section Widget
  Widget _buildSignInWithFacebook(BuildContext context) {
    return CustomOutlinedButton(
        text: "msg_sign_in_with_facebook".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebook1,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        onPressed: () {
          onTapSignInWithFacebook(context);
        });
  }

  /// Section Widget
  Widget _buildSignInWithTwitter(BuildContext context) {
    return CustomOutlinedButton(
        text: "msg_sign_in_with_twitter".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgTwitter1,
                height: 20.adaptSize,
                width: 20.adaptSize)));
  }

  /// Section Widget
  Widget _buildSignInWithApple(BuildContext context) {
    return CustomOutlinedButton(
        text: "msg_sign_in_with_apple".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgAppleblacklogo1,
                height: 20.adaptSize,
                width: 20.adaptSize)));
  }

  onTapSignInWithGoogle(BuildContext context) async {
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

  onTapSignInWithFacebook(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtSignUp(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpScreen,
    );
  }
}
