import 'package:flutter/material.dart';
import 'package:the_7_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_checkbox_button.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_elevated_button.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_floating_text_field.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_text_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  LoginPageState createState() => LoginPageState();
}

// ignore_for_file: must_be_immutable
class LoginPageState extends State<LoginPage>
    with AutomaticKeepAliveClientMixin<LoginPage> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool rememberme = false;

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
                                    CustomFloatingTextField(
                                        controller: passwordController,
                                        labelText: "Password",
                                        labelStyle: theme.textTheme.bodyMedium!,
                                        hintText: "Password",
                                        textInputAction: TextInputAction.done,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        obscureText: true,
                                        suffix: SizedBox(
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgCheckmark,
                                                height: 13.adaptSize,
                                                width: 13.adaptSize)),
                                        suffixConstraints:
                                            BoxConstraints(maxHeight: 51.v)),
                                    SizedBox(height: 24.v),
                                    _buildEleven(context),
                                    SizedBox(height: 24.v),
                                    CustomElevatedButton(
                                        text: "Login",
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
                                                      "Don’t have an account?",
                                                      style: CustomTextStyles
                                                          .titleMediumGray500)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 5.h),
                                                  child: Text("Sign Up",
                                                      style: CustomTextStyles
                                                          .titleMediumPrimary))
                                            ]))
                                  ]))
                            ])))))));
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Email", style: CustomTextStyles.titleMediumSecondaryContainer_1),
      SizedBox(height: 1.v),
      CustomTextFormField(
          controller: emailController,
          hintText: "xyz@gmail.com",
          textInputType: TextInputType.emailAddress,
          suffix: Container(
              margin: EdgeInsets.only(left: 30.h, top: 3.v, bottom: 10.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmark,
                  height: 13.adaptSize,
                  width: 13.adaptSize)),
          suffixConstraints: BoxConstraints(maxHeight: 26.v))
    ]);
  }

  /// Section Widget
  Widget _buildEleven(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: CustomCheckboxButton(
              text: "Remember me",
              value: rememberme,
              onChange: (value) {
                rememberme = value;
              })),
      GestureDetector(
          onTap: () {
            onTapTxtRemeberMeForget(context);
          },
          child: Text("Forget password?",
              style: CustomTextStyles.labelLargePrimary))
    ]);
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtRemeberMeForget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen);
  }

  /// Navigates to the minePageContainerScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.minePageContainerScreen);
  }
}
