import 'package:flutter/material.dart';
import 'package:the_7_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/custom_elevated_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgThumbsUp,
                          height: 80.v,
                          width: 78.h),
                      SizedBox(height: 26.v),
                      Text("Online & Digital",
                          style: CustomTextStyles.headlineSmallMedium),
                      SizedBox(height: 7.v),
                      Text("Banking", style: theme.textTheme.displayMedium),
                      SizedBox(height: 29.v),
                      Container(
                          width: 294.h,
                          margin: EdgeInsets.symmetric(horizontal: 35.h),
                          child: Text(
                              "We help our user to make the right fiance decisioin to make their money safe.",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodyLargeGray600
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 79.v),
                      CustomElevatedButton(
                          text: "Start Now".toUpperCase(),
                          onPressed: () {
                            onTapStartNow(context);
                          })
                    ]))));
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapStartNow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInScreen);
  }
}
