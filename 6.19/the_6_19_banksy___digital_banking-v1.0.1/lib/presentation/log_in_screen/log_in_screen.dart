import 'notifier/log_in_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/core/utils/validation_functions.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/custom_outlined_button.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/custom_text_form_field.dart';
import 'package:the_6_19_banksy___digital_banking/domain/googleauth/google_auth_helper.dart';

class LogInScreen extends ConsumerStatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  LogInScreenState createState() => LogInScreenState();
}

// ignore_for_file: must_be_immutable
class LogInScreenState extends ConsumerState<LogInScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 21.h, vertical: 40.v),
                            child: Column(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgThumbsUp,
                                  height: 80.v,
                                  width: 78.h),
                              SizedBox(height: 24.v),
                              Text("lbl_hello".tr,
                                  style: theme.textTheme.displayMedium),
                              SizedBox(height: 10.v),
                              Text("msg_enter_your_detail".tr,
                                  style: CustomTextStyles.bodyLarge16),
                              SizedBox(height: 73.v),
                              _buildInputField(context),
                              SizedBox(height: 23.v),
                              _buildInputField1(context),
                              SizedBox(height: 40.v),
                              CustomElevatedButton(
                                  text: "lbl_sign_in".tr.toUpperCase(),
                                  margin: EdgeInsets.symmetric(horizontal: 3.h),
                                  onPressed: () {
                                    onTapSIGNIN(context);
                                  }),
                              SizedBox(height: 40.v),
                              CustomOutlinedButton(
                                  text: "msg_sign_in_with_google"
                                      .tr
                                      .toUpperCase(),
                                  margin: EdgeInsets.only(left: 6.h),
                                  leftIcon: Container(
                                      margin: EdgeInsets.only(right: 10.h),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgGoogle,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)),
                                  onPressed: () {
                                    onTapSignInWithGoogle(context);
                                  }),
                              SizedBox(height: 77.v),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 2.v),
                                        child: Text("lbl_have_account".tr,
                                            style: CustomTextStyles
                                                .titleLargeGray500Regular)),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtSignUp(context);
                                        },
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 8.h, top: 2.v),
                                            child: Text("lbl_sign_up".tr,
                                                style: CustomTextStyles
                                                    .titleLargePrimary)))
                                  ]),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_phone_or_email".tr,
              style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          Consumer(builder: (context, ref, _) {
            return CustomTextFormField(
                controller: ref.watch(logInNotifier).phoneController,
                hintText: "lbl_email".tr,
                textInputType: TextInputType.emailAddress,
                prefix: Container(
                    margin: EdgeInsets.fromLTRB(24.h, 20.v, 12.h, 20.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgCheckmark,
                        height: 24.adaptSize,
                        width: 24.adaptSize)),
                prefixConstraints: BoxConstraints(maxHeight: 64.v),
                validator: (value) {
                  if (value == null ||
                      (!isValidEmail(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_email".tr;
                  }
                  return null;
                },
                contentPadding:
                    EdgeInsets.only(top: 20.v, right: 30.h, bottom: 20.v));
          })
        ]));
  }

  /// Section Widget
  Widget _buildInputField1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_password".tr, style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          Consumer(builder: (context, ref, _) {
            return CustomTextFormField(
                controller: ref.watch(logInNotifier).passwordController,
                hintText: "lbl_password".tr,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.visiblePassword,
                prefix: Container(
                    margin: EdgeInsets.fromLTRB(24.h, 20.v, 12.h, 20.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgLocation,
                        height: 24.adaptSize,
                        width: 24.adaptSize)),
                prefixConstraints: BoxConstraints(maxHeight: 64.v),
                validator: (value) {
                  if (value == null ||
                      (!isValidPassword(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_password".tr;
                  }
                  return null;
                },
                obscureText: true,
                contentPadding:
                    EdgeInsets.only(top: 20.v, right: 30.h, bottom: 20.v));
          })
        ]));
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapSIGNIN(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeContainerScreen,
    );
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

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtSignUp(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpScreen,
    );
  }
}
