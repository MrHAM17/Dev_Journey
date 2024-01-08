import 'bloc/reset_password_success_bloc.dart';
import 'models/reset_password_success_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/custom_elevated_button.dart';

class ResetPasswordSuccessScreen extends StatelessWidget {
  const ResetPasswordSuccessScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ResetPasswordSuccessBloc>(
        create: (context) => ResetPasswordSuccessBloc(ResetPasswordSuccessState(
            resetPasswordSuccessModelObj: ResetPasswordSuccessModel()))
          ..add(ResetPasswordSuccessInitialEvent()),
        child: ResetPasswordSuccessScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResetPasswordSuccessBloc, ResetPasswordSuccessState>(
        builder: (context, state) {
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
    });
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
