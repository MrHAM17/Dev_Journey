import 'notifier/forgot_password_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_6_13_fashionista___e_commerce_app/core/utils/validation_functions.dart';
import 'package:the_6_13_fashionista___e_commerce_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:the_6_13_fashionista___e_commerce_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_6_13_fashionista___e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_13_fashionista___e_commerce_app/widgets/custom_elevated_button.dart';
import 'package:the_6_13_fashionista___e_commerce_app/widgets/custom_text_form_field.dart';

class ForgotPasswordScreen extends ConsumerStatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  ForgotPasswordScreenState createState() => ForgotPasswordScreenState();
}

// ignore_for_file: must_be_immutable
class ForgotPasswordScreenState extends ConsumerState<ForgotPasswordScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
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
                                horizontal: 16.h, vertical: 25.v),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      width: 279.h,
                                      margin: EdgeInsets.only(right: 63.h),
                                      child: Text(
                                          "msg_we_need_your_registration".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.bodyLarge!
                                              .copyWith(height: 1.50)))),
                              SizedBox(height: 78.v),
                              Consumer(builder: (context, ref, _) {
                                return CustomTextFormField(
                                    controller: ref
                                        .watch(forgotPasswordNotifier)
                                        .emailController,
                                    hintText: "lbl_email".tr,
                                    textInputAction: TextInputAction.done,
                                    textInputType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "err_msg_please_enter_valid_email"
                                            .tr;
                                      }
                                      return null;
                                    },
                                    obscureText: true);
                              }),
                              SizedBox(height: 20.v),
                              CustomElevatedButton(
                                  text: "lbl_send_code".tr,
                                  onPressed: () {
                                    onTapSendCode(context);
                                  }),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_forgot_password".tr));
  }

  /// Navigates back to the previous screen.
  onTapArrowDown(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the verificationCodeScreen when the action is triggered.
  onTapSendCode(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.verificationCodeScreen,
    );
  }
}
