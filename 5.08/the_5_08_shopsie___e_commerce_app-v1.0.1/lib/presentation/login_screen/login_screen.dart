import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_5_08_shopsie___e_commerce_app/core/utils/validation_functions.dart';
import 'package:the_5_08_shopsie___e_commerce_app/widgets/custom_elevated_button.dart';
import 'package:the_5_08_shopsie___e_commerce_app/widgets/custom_text_form_field.dart';
import 'provider/login_provider.dart';
import 'package:the_5_08_shopsie___e_commerce_app/domain/facebookauth/facebook_auth_helper.dart';
import 'package:the_5_08_shopsie___e_commerce_app/domain/googleauth/google_auth_helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LoginProvider(), child: LoginScreen());
  }
}

// ignore_for_file: must_be_immutable
class LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                          width: 249.h,
                                          margin: EdgeInsets.only(left: 8.h),
                                          child: Text(
                                              "msg_welcome_back_glad".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: theme
                                                  .textTheme.headlineSmall!
                                                  .copyWith(height: 1.50)))),
                                  SizedBox(height: 34.v),
                                  Selector<LoginProvider,
                                          TextEditingController?>(
                                      selector: (context, provider) =>
                                          provider.emailController,
                                      builder:
                                          (context, emailController, child) {
                                        return CustomTextFormField(
                                            controller: emailController,
                                            hintText: "msg_enter_your_email".tr,
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
                                  SizedBox(height: 15.v),
                                  Consumer<LoginProvider>(
                                      builder: (context, provider, child) {
                                    return CustomTextFormField(
                                        controller: provider.passwordController,
                                        hintText: "msg_enter_your_password".tr,
                                        textInputAction: TextInputAction.done,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        suffix: InkWell(
                                            onTap: () {
                                              provider
                                                  .changePasswordVisibility();
                                            },
                                            child: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    30.h, 12.v, 23.h, 12.v),
                                                child: CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgEye,
                                                    height: 24.adaptSize,
                                                    width: 24.adaptSize))),
                                        suffixConstraints:
                                            BoxConstraints(maxHeight: 48.v),
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidPassword(value,
                                                  isRequired: true))) {
                                            return "err_msg_please_enter_valid_password"
                                                .tr;
                                          }
                                          return null;
                                        },
                                        obscureText: provider.isShowPassword,
                                        contentPadding: EdgeInsets.only(
                                            left: 24.h,
                                            top: 15.v,
                                            bottom: 15.v));
                                  }),
                                  SizedBox(height: 24.v),
                                  CustomElevatedButton(
                                      text: "lbl_login".tr,
                                      onPressed: () {
                                        onTapLogin(context);
                                      }),
                                  SizedBox(height: 38.v),
                                  _buildOrLoginWithDivider(context),
                                  SizedBox(height: 21.v),
                                  _buildEleven(context),
                                  SizedBox(height: 43.v),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtDonthaveanaccount(context);
                                      },
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "lbl_don_t_have_an".tr,
                                                style:
                                                    theme.textTheme.bodyMedium),
                                            TextSpan(
                                                text: "lbl_account".tr,
                                                style:
                                                    theme.textTheme.bodyMedium),
                                            TextSpan(text: " "),
                                            TextSpan(
                                                text: "lbl_register_now".tr,
                                                style: CustomTextStyles
                                                    .titleSmallPrimary)
                                          ]),
                                          textAlign: TextAlign.left)),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  Widget _buildOrLoginWithDivider(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 7.v, bottom: 8.v),
              child: SizedBox(width: 112.h, child: Divider())),
          Text("lbl_or_login_with".tr,
              style: CustomTextStyles.bodyMediumGray600_1),
          Padding(
              padding: EdgeInsets.only(top: 7.v, bottom: 8.v),
              child: SizedBox(width: 111.h, child: Divider()))
        ]);
  }

  /// Section Widget
  Widget _buildEleven(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
          height: 56.v,
          width: 168.h,
          padding: EdgeInsets.symmetric(vertical: 14.v),
          decoration: AppDecoration.outlineGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: CustomImageView(
              imagePath: ImageConstant.imgSocialFacebookIc,
              height: 26.adaptSize,
              width: 26.adaptSize,
              alignment: Alignment.center,
              onTap: () {
                onTapImgSocialFacebookIc(context);
              })),
      Container(
          height: 56.v,
          width: 168.h,
          padding: EdgeInsets.symmetric(vertical: 14.v),
          decoration: AppDecoration.outlineGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: CustomImageView(
              imagePath: ImageConstant.imgSocialGoogleIc,
              height: 26.adaptSize,
              width: 26.adaptSize,
              alignment: Alignment.center,
              onTap: () {
                onTapImgSocialGoogleIc(context);
              }))
    ]);
  }

  /// Navigates to the mainLandingScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mainLandingScreen,
    );
  }

  onTapImgSocialFacebookIc(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  onTapImgSocialGoogleIc(BuildContext context) async {
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

  /// Navigates to the registerScreen when the action is triggered.
  onTapTxtDonthaveanaccount(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.registerScreen,
    );
  }
}
