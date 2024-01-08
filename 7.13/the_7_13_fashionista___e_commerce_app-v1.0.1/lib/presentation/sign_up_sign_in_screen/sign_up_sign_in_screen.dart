import 'package:flutter/material.dart';
import 'package:the_7_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/custom_elevated_button.dart';

class SignUpSignInScreen extends StatelessWidget {
  const SignUpSignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 60.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgUnsplashW7b3edub2i,
                      height: 299.adaptSize,
                      width: 299.adaptSize,
                      radius: BorderRadius.circular(149.h)),
                  SizedBox(height: 80.v),
                  SizedBox(
                      width: 180.h,
                      child: Text("Discover your\nShopping Here",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.headlineSmallPrimary
                              .copyWith(height: 1.50))),
                  SizedBox(height: 10.v),
                  Container(
                      width: 308.h,
                      margin: EdgeInsets.only(left: 18.h, right: 17.h),
                      child: Text(
                          "It is a long established fact that a reader\nwill be distracted by the readable\ncontent of a page.",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyMediumGray50015
                              .copyWith(height: 1.73))),
                  SizedBox(height: 38.v),
                  _buildFrame(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: CustomElevatedButton(
              text: "Login",
              margin: EdgeInsets.only(right: 11.h),
              onPressed: () {
                onTapLogin(context);
              })),
      Expanded(
          child: CustomElevatedButton(
              text: "Register",
              margin: EdgeInsets.only(left: 11.h),
              buttonStyle: CustomButtonStyles.fillGray,
              buttonTextStyle: CustomTextStyles.titleMedium16,
              onPressed: () {
                onTapRegister(context);
              }))
    ]);
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapRegister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
