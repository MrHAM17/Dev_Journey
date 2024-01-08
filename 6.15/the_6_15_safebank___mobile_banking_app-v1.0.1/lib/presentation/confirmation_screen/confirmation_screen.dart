import 'notifier/confirmation_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_6_15_safebank___mobile_banking_app/widgets/custom_elevated_button.dart';

class ConfirmationScreen extends ConsumerStatefulWidget {
  const ConfirmationScreen({Key? key}) : super(key: key);

  @override
  ConfirmationScreenState createState() => ConfirmationScreenState();
}

class ConfirmationScreenState extends ConsumerState<ConfirmationScreen> {
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
                      Text("lbl_confirmation".tr,
                          style: CustomTextStyles.titleMediumSemiBold18),
                      SizedBox(height: 70.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgIllustrationGray100,
                          height: 200.v,
                          width: 143.h),
                      SizedBox(height: 70.v),
                      CustomElevatedButton(
                          text: "lbl_back_home".tr,
                          onPressed: () {
                            onTapBackHome(context);
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the minePageContainerScreen when the action is triggered.
  onTapBackHome(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.minePageContainerScreen,
    );
  }
}
