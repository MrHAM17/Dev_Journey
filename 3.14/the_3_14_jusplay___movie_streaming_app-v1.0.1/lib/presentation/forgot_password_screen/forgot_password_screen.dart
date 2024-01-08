import 'bloc/forgot_password_bloc.dart';
import 'models/forgot_password_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/core/utils/validation_functions.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/custom_elevated_button.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ForgotPasswordBloc>(
        create: (context) => ForgotPasswordBloc(
            ForgotPasswordState(forgotPasswordModelObj: ForgotPasswordModel()))
          ..add(ForgotPasswordInitialEvent()),
        child: ForgotPasswordScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(horizontal: 16.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("msg_forgot_password".tr,
                                      style: theme.textTheme.headlineSmall),
                                  SizedBox(height: 9.v),
                                  Container(
                                      width: 324.h,
                                      margin: EdgeInsets.only(right: 18.h),
                                      child: Text("msg_you_forgot_your".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.bodyMedium!
                                              .copyWith(height: 1.50))),
                                  SizedBox(height: 45.v),
                                  BlocSelector<
                                          ForgotPasswordBloc,
                                          ForgotPasswordState,
                                          TextEditingController?>(
                                      selector: (state) =>
                                          state.emailController,
                                      builder: (context, emailController) {
                                        return CustomTextFormField(
                                            controller: emailController,
                                            hintText: "lbl_email_address".tr,
                                            textInputAction:
                                                TextInputAction.done,
                                            textInputType:
                                                TextInputType.emailAddress,
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidEmail(value,
                                                      isRequired: true))) {
                                                return "err_msg_please_enter_valid_email"
                                                    .tr;
                                              }
                                              return null;
                                            });
                                      }),
                                  SizedBox(height: 31.v),
                                  CustomElevatedButton(
                                      text: "lbl_submit".tr,
                                      buttonStyle:
                                          CustomButtonStyles.fillPrimary,
                                      onPressed: () {
                                        onTapSubmit(context);
                                      }),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Navigates to the otpVerificationScreen when the action is triggered.
  onTapSubmit(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.otpVerificationScreen,
    );
  }
}