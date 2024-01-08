import 'bloc/reset_password_verify_code_bloc.dart';
import 'models/reset_password_verify_code_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_06_helthio___telehealth/core/app_export.dart';
import 'package:the_3_06_helthio___telehealth/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_3_06_helthio___telehealth/widgets/app_bar/custom_app_bar.dart';
import 'package:the_3_06_helthio___telehealth/widgets/custom_elevated_button.dart';
import 'package:the_3_06_helthio___telehealth/widgets/custom_pin_code_text_field.dart';

class ResetPasswordVerifyCodeScreen extends StatelessWidget {
  const ResetPasswordVerifyCodeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ResetPasswordVerifyCodeBloc>(
        create: (context) => ResetPasswordVerifyCodeBloc(
            ResetPasswordVerifyCodeState(
                resetPasswordVerifyCodeModelObj:
                    ResetPasswordVerifyCodeModel()))
          ..add(ResetPasswordVerifyCodeInitialEvent()),
        child: ResetPasswordVerifyCodeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 42.v),
                child: Column(children: [
                  _buildTitle(context),
                  SizedBox(height: 29.v),
                  Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: BlocSelector<
                              ResetPasswordVerifyCodeBloc,
                              ResetPasswordVerifyCodeState,
                              TextEditingController?>(
                          selector: (state) => state.otpController,
                          builder: (context, otpController) {
                            return CustomPinCodeTextField(
                                context: context,
                                controller: otpController,
                                onChanged: (value) {
                                  otpController?.text = value;
                                });
                          })),
                  SizedBox(height: 40.v),
                  CustomElevatedButton(
                      text: "lbl_verify".tr,
                      onPressed: () {
                        onTapVerify(context);
                      }),
                  SizedBox(height: 25.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text("msg_didn_t_receive_the".tr,
                        style: CustomTextStyles.bodyMediumGray600),
                    Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text("lbl_resend".tr,
                            style: CustomTextStyles.titleSmallPrimarySemiBold))
                  ]),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconChevronLeftOnprimary,
            margin: EdgeInsets.fromLTRB(32.h, 8.v, 319.h, 8.v)));
  }

  /// Section Widget
  Widget _buildTitle(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("msg_enter_verification".tr,
              style: theme.textTheme.headlineSmall),
          SizedBox(height: 10.v),
          Container(
              width: 273.h,
              margin: EdgeInsets.only(right: 54.h),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "msg_enter_code_that2".tr,
                        style: CustomTextStyles.titleMediumGray500Medium),
                    TextSpan(
                        text: "lbl_08528188".tr,
                        style: CustomTextStyles.titleMediumMedium_1)
                  ]),
                  textAlign: TextAlign.left))
        ]));
  }

  /// Navigates to the createNewPasswordScreen when the action is triggered.
  onTapVerify(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.createNewPasswordScreen,
    );
  }
}
