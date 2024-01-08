import 'bloc/reset_password_successful_bloc.dart';
import 'models/reset_password_successful_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordSuccessfulDialog extends StatelessWidget {
  const ResetPasswordSuccessfulDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ResetPasswordSuccessfulBloc>(
      create: (context) =>
          ResetPasswordSuccessfulBloc(ResetPasswordSuccessfulState(
        resetPasswordSuccessfulModelObj: ResetPasswordSuccessfulModel(),
      ))
            ..add(ResetPasswordSuccessfulInitialEvent()),
      child: ResetPasswordSuccessfulDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.h,
      padding: EdgeInsets.symmetric(
        horizontal: 38.h,
        vertical: 32.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Text(
            "msg_congratulations".tr,
            style: CustomTextStyles.headlineSmallErrorContainer,
          ),
          SizedBox(height: 14.v),
          SizedBox(
            width: 262.h,
            child: Text(
              "msg_your_account_is".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge!.copyWith(
                height: 1.40,
              ),
            ),
          ),
          SizedBox(height: 29.v),
          SizedBox(
            height: 60.adaptSize,
            width: 60.adaptSize,
            child: CircularProgressIndicator(
              value: 0.5,
              backgroundColor: appTheme.deepOrange50,
              color: theme.colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}