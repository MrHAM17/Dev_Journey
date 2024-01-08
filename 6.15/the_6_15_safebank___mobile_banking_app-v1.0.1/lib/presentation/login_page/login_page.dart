import 'notifier/login_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_6_15_safebank___mobile_banking_app/core/utils/validation_functions.dart';
import 'package:the_6_15_safebank___mobile_banking_app/widgets/custom_checkbox_button.dart';
import 'package:the_6_15_safebank___mobile_banking_app/widgets/custom_elevated_button.dart';
import 'package:the_6_15_safebank___mobile_banking_app/widgets/custom_floating_text_field.dart';
import 'package:the_6_15_safebank___mobile_banking_app/widgets/custom_text_form_field.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  LoginPageState createState() => LoginPageState();
}

// ignore_for_file: must_be_immutable
class LoginPageState extends ConsumerState<LoginPage>
    with AutomaticKeepAliveClientMixin<LoginPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;

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
                            decoration: AppDecoration.white,
                            child: Column(children: [
                              SizedBox(height: 38.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 24.h),
                                  child: Column(children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgIllustration,
                                        height: 212.adaptSize,
                                        width: 212.adaptSize),
                                    SizedBox(height: 78.v),
                                    _buildInputField(context),
                                    SizedBox(height: 23.v),
                                    Consumer(builder: (context, ref, _) {
                                      return CustomFloatingTextField(
                                          controller: ref
                                              .watch(loginNotifier)
                                              .passwordController,
                                          labelText: "lbl_password".tr,
                                          labelStyle:
                                              theme.textTheme.bodyMedium!,
                                          hintText: "lbl_password".tr,
                                          textInputAction: TextInputAction.done,
                                          textInputType:
                                              TextInputType.visiblePassword,
                                          obscureText: ref
                                              .watch(loginNotifier)
                                              .isShowPassword,
                                          suffix: InkWell(
                                              onTap: () {
                                                ref
                                                    .read(
                                                        loginNotifier.notifier)
                                                    .changePasswordVisibility();
                                              },
                                              child: SizedBox(
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgCheckmark,
                                                      height: 13.adaptSize,
                                                      width: 13.adaptSize))),
                                          suffixConstraints:
                                              BoxConstraints(maxHeight: 51.v),
                                          validator: (value) {
                                            if (value == null ||
                                                (!isValidPassword(value,
                                                    isRequired: true))) {
                                              return "err_msg_please_enter_valid_password"
                                                  .tr;
                                            }
                                            return null;
                                          });
                                    }),
                                    SizedBox(height: 24.v),
                                    _buildEleven(context),
                                    SizedBox(height: 24.v),
                                    CustomElevatedButton(
                                        text: "lbl_login".tr,
                                        onPressed: () {
                                          onTapLogin(context);
                                        }),
                                    SizedBox(height: 69.v),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 34.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 1.v),
                                                  child: Text(
                                                      "msg_don_t_have_an_account"
                                                          .tr,
                                                      style: CustomTextStyles
                                                          .titleMediumGray500)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 5.h),
                                                  child: Text("lbl_sign_up".tr,
                                                      style: CustomTextStyles
                                                          .titleMediumPrimary))
                                            ]))
                                  ]))
                            ])))))));
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_email".tr,
          style: CustomTextStyles.titleMediumSecondaryContainer_1),
      SizedBox(height: 1.v),
      Consumer(builder: (context, ref, _) {
        return CustomTextFormField(
            controller: ref.watch(loginNotifier).emailController,
            hintText: "lbl_xyz_gmail_com".tr,
            textInputType: TextInputType.emailAddress,
            suffix: Container(
                margin: EdgeInsets.only(left: 30.h, top: 3.v, bottom: 10.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgCheckmark,
                    height: 13.adaptSize,
                    width: 13.adaptSize)),
            suffixConstraints: BoxConstraints(maxHeight: 26.v),
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            });
      })
    ]);
  }

  /// Section Widget
  Widget _buildEleven(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Consumer(builder: (context, ref, _) {
            return CustomCheckboxButton(
                text: "lbl_remember_me".tr,
                value: ref.watch(loginNotifier).rememberme,
                onChange: (value) {
                  ref.read(loginNotifier.notifier).changeCheckBox1(value);
                });
          })),
      GestureDetector(
          onTap: () {
            onTapTxtRemeberMeForget(context);
          },
          child: Text("msg_forget_password".tr,
              style: CustomTextStyles.labelLargePrimary))
    ]);
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtRemeberMeForget(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }

  /// Navigates to the minePageContainerScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.minePageContainerScreen,
    );
  }
}
