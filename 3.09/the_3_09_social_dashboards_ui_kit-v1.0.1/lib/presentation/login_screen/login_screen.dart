import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_3_09_social_dashboards_ui_kit/core/utils/validation_functions.dart';
import 'package:the_3_09_social_dashboards_ui_kit/widgets/custom_elevated_button.dart';
import 'package:the_3_09_social_dashboards_ui_kit/widgets/custom_outlined_button.dart';
import 'package:the_3_09_social_dashboards_ui_kit/widgets/custom_text_form_field.dart';
import 'package:the_3_09_social_dashboards_ui_kit/domain/facebookauth/facebook_auth_helper.dart';
import 'package:the_3_09_social_dashboards_ui_kit/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            height: 768.v,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgImage,
                                      height: 287.v,
                                      width: 375.h,
                                      alignment: Alignment.topCenter),
                                  _buildSix(context)
                                ])))))));
  }

  /// Section Widget
  Widget _buildSocials(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
          height: 58.v,
          width: 99.h,
          padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 20.v),
          decoration: AppDecoration.fillLightBlue
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
          child: CustomImageView(
              imagePath: ImageConstant.imgFacebook,
              height: 18.adaptSize,
              width: 18.adaptSize,
              alignment: Alignment.centerLeft,
              onTap: () {
                onTapImgFacebook(context);
              })),
      Container(
          height: 58.v,
          width: 99.h,
          padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 20.v),
          decoration: AppDecoration.fillOnPrimary
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
          child: CustomImageView(
              imagePath: ImageConstant.imgUser,
              height: 18.adaptSize,
              width: 18.adaptSize,
              alignment: Alignment.centerLeft)),
      Container(
          height: 58.v,
          width: 99.h,
          padding: EdgeInsets.symmetric(horizontal: 38.h, vertical: 18.v),
          decoration: AppDecoration.outlineGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
          child: CustomImageView(
              imagePath: ImageConstant.imgGoogle,
              height: 18.adaptSize,
              width: 18.adaptSize,
              alignment: Alignment.centerLeft,
              onTap: () {
                onTapImgGoogle(context);
              }))
    ]);
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_email".tr.toUpperCase(), style: theme.textTheme.labelLarge),
      SizedBox(height: 12.v),
      BlocSelector<LoginBloc, LoginState, TextEditingController?>(
          selector: (state) => state.emailController,
          builder: (context, emailController) {
            return CustomTextFormField(
                controller: emailController,
                hintText: "lbl_user_mail_com".tr,
                textInputType: TextInputType.emailAddress,
                suffix: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 15.v, 15.h, 15.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgCheckmark,
                        height: 18.adaptSize,
                        width: 18.adaptSize)),
                suffixConstraints: BoxConstraints(maxHeight: 48.v),
                validator: (value) {
                  if (value == null ||
                      (!isValidEmail(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_email".tr;
                  }
                  return null;
                });
          })
    ]);
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_password".tr.toUpperCase(), style: theme.textTheme.labelLarge),
      SizedBox(height: 12.v),
      BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
        return CustomTextFormField(
            controller: state.passwordController,
            hintText: "lbl_password_123".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            suffix: InkWell(
                onTap: () {
                  context.read<LoginBloc>().add(ChangePasswordVisibilityEvent(
                      value: !state.isShowPassword));
                },
                child: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgUeye,
                        height: 24.adaptSize,
                        width: 24.adaptSize))),
            suffixConstraints: BoxConstraints(maxHeight: 48.v),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: state.isShowPassword);
      })
    ]);
  }

  /// Section Widget
  Widget _buildSix(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 39.v),
            decoration:
                BoxDecoration(borderRadius: BorderRadiusStyle.customBorderTL32),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("lbl_welcome_back".tr,
                      style: theme.textTheme.titleLarge)),
              SizedBox(height: 14.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("msg_login_to_continue".tr,
                      style: CustomTextStyles.titleSmallBluegray400)),
              SizedBox(height: 28.v),
              _buildSocials(context),
              SizedBox(height: 21.v),
              Text("msg_or_connect_with".tr, style: theme.textTheme.bodySmall),
              SizedBox(height: 31.v),
              _buildEmail(context),
              SizedBox(height: 20.v),
              _buildPassword(context),
              SizedBox(height: 21.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text("msg_forgot_password".tr,
                      style: CustomTextStyles.bodyMediumPrimary)),
              SizedBox(height: 19.v),
              CustomElevatedButton(
                  height: 58.v,
                  text: "lbl_login".tr,
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: CustomTextStyles.titleSmallWhiteA700Bold,
                  onPressed: () {
                    onTapLogin(context);
                  }),
              SizedBox(height: 18.v),
              CustomOutlinedButton(
                  text: "msg_create_an_account".tr,
                  buttonStyle: CustomButtonStyles.outlineGray,
                  onPressed: () {
                    onTapCreateAnAccount(context);
                  }),
              SizedBox(height: 16.v)
            ])));
  }

  onTapImgFacebook(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  onTapImgGoogle(BuildContext context) async {
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

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeContainerScreen,
    );
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapCreateAnAccount(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupScreen,
    );
  }
}
