import 'notifier/login_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_02_music_player/core/app_export.dart';
import 'package:the_6_02_music_player/core/utils/validation_functions.dart';
import 'package:the_6_02_music_player/widgets/custom_elevated_button.dart';
import 'package:the_6_02_music_player/widgets/custom_outlined_button.dart';
import 'package:the_6_02_music_player/widgets/custom_text_form_field.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends ConsumerState<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onError,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 152.v,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Spacer(),
                    Text(
                      "lbl_sign_in".tr,
                      style: theme.textTheme.headlineMedium,
                    ),
                    SizedBox(height: 31.v),
                    _buildEmail(context),
                    SizedBox(height: 16.v),
                    _buildPassword(context),
                    SizedBox(height: 24.v),
                    _buildSignIn(context),
                    SizedBox(height: 40.v),
                    Text(
                      "msg_forgot_your_login".tr,
                      style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildCreateAccount(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(loginNotifier).emailController,
          hintText: "lbl_email".tr,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(loginNotifier).passwordController,
          hintText: "lbl_password".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSignIn(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_sign_in2".tr,
      buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
      buttonTextStyle: CustomTextStyles.bodyLargeBlack900,
    );
  }

  /// Section Widget
  Widget _buildCreateAccount(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_create_account".tr,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 40.v,
      ),
    );
  }
}
