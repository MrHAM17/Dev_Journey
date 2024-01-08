import 'notifier/reset_password_success_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/widgets/custom_elevated_button.dart';

class ResetPasswordSuccessScreen extends ConsumerStatefulWidget {
  const ResetPasswordSuccessScreen({Key? key}) : super(key: key);

  @override
  ResetPasswordSuccessScreenState createState() =>
      ResetPasswordSuccessScreenState();
}

class ResetPasswordSuccessScreenState
    extends ConsumerState<ResetPasswordSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("lbl_congrats".tr,
                          style: theme.textTheme.headlineSmall),
                      SizedBox(height: 8.v),
                      Container(
                          width: 307.h,
                          margin: EdgeInsets.only(right: 35.h),
                          child: Text("msg_congrats_your_password".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 46.v),
                      CustomElevatedButton(
                          text: "lbl_login".tr,
                          buttonStyle: CustomButtonStyles.fillPrimary,
                          onPressed: () {
                            onTapLogin(context);
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
