import 'models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/widgets/custom_elevated_button.dart';
import 'provider/onboarding_provider.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  OnboardingScreenState createState() => OnboardingScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => OnboardingProvider(), child: OnboardingScreen());
  }
}

class OnboardingScreenState extends State<OnboardingScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgThumbsUp,
                          height: 80.v,
                          width: 78.h),
                      SizedBox(height: 26.v),
                      Text("msg_online_digital".tr,
                          style: CustomTextStyles.headlineSmallMedium),
                      SizedBox(height: 7.v),
                      Text("lbl_banking".tr,
                          style: theme.textTheme.displayMedium),
                      SizedBox(height: 29.v),
                      Container(
                          width: 294.h,
                          margin: EdgeInsets.symmetric(horizontal: 35.h),
                          child: Text("msg_we_help_our_user".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodyLargeGray600
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 79.v),
                      CustomElevatedButton(
                          text: "lbl_start_now".tr.toUpperCase(),
                          onPressed: () {
                            onTapStartNow(context);
                          })
                    ]))));
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapStartNow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.logInScreen,
    );
  }
}
