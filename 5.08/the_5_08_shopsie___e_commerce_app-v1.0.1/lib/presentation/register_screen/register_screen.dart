import 'models/register_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_5_08_shopsie___e_commerce_app/core/utils/validation_functions.dart';
import 'package:the_5_08_shopsie___e_commerce_app/widgets/custom_elevated_button.dart';
import 'package:the_5_08_shopsie___e_commerce_app/widgets/custom_text_form_field.dart';
import 'provider/register_provider.dart';
import 'package:the_5_08_shopsie___e_commerce_app/domain/facebookauth/facebook_auth_helper.dart';
import 'package:the_5_08_shopsie___e_commerce_app/domain/googleauth/google_auth_helper.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  RegisterScreenState createState() => RegisterScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => RegisterProvider(), child: RegisterScreen());
  }
}

// ignore_for_file: must_be_immutable
class RegisterScreenState extends State<RegisterScreen> {
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
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.only(
                                left: 16.h, top: 98.v, right: 16.h),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("msg_hello_register".tr,
                                      style: theme.textTheme.headlineSmall)),
                              SizedBox(height: 40.v),
                              _buildFirstName(context),
                              SizedBox(height: 12.v),
                              _buildLastName(context),
                              SizedBox(height: 12.v),
                              _buildEmail(context),
                              SizedBox(height: 12.v),
                              _buildPassword(context),
                              SizedBox(height: 24.v),
                              _buildRegister(context),
                              SizedBox(height: 38.v),
                              _buildOrLoginWithDivider(context),
                              SizedBox(height: 21.v),
                              _buildEight(context),
                              SizedBox(height: 43.v),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtAlreadyhavean(context);
                                  },
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_already_have_an2".tr,
                                            style: theme.textTheme.bodyMedium),
                                        TextSpan(text: " "),
                                        TextSpan(
                                            text: "lbl_login_now".tr,
                                            style: CustomTextStyles
                                                .titleSmallPrimary)
                                      ]),
                                      textAlign: TextAlign.left)),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return Selector<RegisterProvider, TextEditingController?>(
        selector: (context, provider) => provider.firstNameController,
        builder: (context, firstNameController, child) {
          return CustomTextFormField(
              controller: firstNameController,
              hintText: "lbl_first_name".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return Selector<RegisterProvider, TextEditingController?>(
        selector: (context, provider) => provider.lastNameController,
        builder: (context, lastNameController, child) {
          return CustomTextFormField(
              controller: lastNameController,
              hintText: "lbl_last_name".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Selector<RegisterProvider, TextEditingController?>(
        selector: (context, provider) => provider.emailController,
        builder: (context, emailController, child) {
          return CustomTextFormField(
              controller: emailController,
              hintText: "lbl_email".tr,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Selector<RegisterProvider, TextEditingController?>(
        selector: (context, provider) => provider.passwordController,
        builder: (context, passwordController, child) {
          return CustomTextFormField(
              controller: passwordController,
              hintText: "lbl_password".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: true);
        });
  }

  /// Section Widget
  Widget _buildRegister(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_register".tr,
        onPressed: () {
          onTapRegister(context);
        });
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
  Widget _buildEight(BuildContext context) {
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
  onTapRegister(BuildContext context) {
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

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtAlreadyhavean(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
