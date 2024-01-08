import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_3_13_fashionista___e_commerce_app/core/utils/validation_functions.dart';
import 'package:the_3_13_fashionista___e_commerce_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:the_3_13_fashionista___e_commerce_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_3_13_fashionista___e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_3_13_fashionista___e_commerce_app/widgets/custom_elevated_button.dart';
import 'package:the_3_13_fashionista___e_commerce_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
        create: (context) =>
            SignUpBloc(SignUpState(signUpModelObj: SignUpModel()))
              ..add(SignUpInitialEvent()),
        child: SignUpScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 26.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, right: 16.h, bottom: 5.v),
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: SizedBox(
                                  width: 126.h,
                                  child: Text("lbl_create_account".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.headlineMedium!
                                          .copyWith(height: 1.50)))),
                          SizedBox(height: 29.v),
                          _buildName(context),
                          SizedBox(height: 20.v),
                          _buildEmail(context),
                          SizedBox(height: 20.v),
                          _buildPassword(context),
                          SizedBox(height: 94.v),
                          _buildRegister(context),
                          SizedBox(height: 16.v),
                          GestureDetector(
                              onTap: () {
                                onTapTxtAlreadyhavean(context);
                              },
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_already_have_an2".tr,
                                        style:
                                            CustomTextStyles.bodyMediumGray500),
                                    TextSpan(
                                        text: "lbl_login".tr,
                                        style: CustomTextStyles.titleSmallBold)
                                  ]),
                                  textAlign: TextAlign.left)),
                          SizedBox(height: 31.v),
                          _buildFrameSeventeen(context),
                          SizedBox(height: 20.v),
                          _buildFrame(context)
                        ]))))));
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
        title: AppbarSubtitleOne(text: "lbl_let_s_sign_up".tr));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
        selector: (state) => state.nameController,
        builder: (context, nameController) {
          return CustomTextFormField(
              controller: nameController,
              hintText: "lbl_name".tr,
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
    return BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
        selector: (state) => state.emailController,
        builder: (context, emailController) {
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
    return BlocBuilder<SignUpBloc, SignUpState>(builder: (context, state) {
      return CustomTextFormField(
          controller: state.passwordController,
          hintText: "lbl_password".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          suffix: InkWell(
              onTap: () {
                context.read<SignUpBloc>().add(ChangePasswordVisibilityEvent(
                    value: !state.isShowPassword));
              },
              child: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 18.v, 16.h, 18.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIcon,
                      height: 16.adaptSize,
                      width: 16.adaptSize))),
          suffixConstraints: BoxConstraints(maxHeight: 52.v),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: state.isShowPassword,
          contentPadding: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 14.v));
    });
  }

  /// Section Widget
  Widget _buildRegister(BuildContext context) {
    return CustomElevatedButton(text: "lbl_register".tr);
  }

  /// Section Widget
  Widget _buildOrContinueWith(BuildContext context) {
    return CustomElevatedButton(
        height: 41.v,
        width: 133.h,
        text: "msg_or_continue_with".tr,
        buttonStyle: CustomButtonStyles.fillWhiteA,
        buttonTextStyle: theme.textTheme.bodyMedium!);
  }

  /// Section Widget
  Widget _buildFrameSeventeen(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: EdgeInsets.symmetric(vertical: 19.v),
          child: SizedBox(width: 105.h, child: Divider())),
      _buildOrContinueWith(context),
      Padding(
          padding: EdgeInsets.symmetric(vertical: 19.v),
          child: SizedBox(width: 105.h, child: Divider()))
    ]);
  }

  /// Section Widget
  Widget _buildGoogle(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            text: "lbl_google".tr,
            margin: EdgeInsets.only(right: 11.h),
            leftIcon: Container(
                margin: EdgeInsets.only(right: 8.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgFlatcoloriconsgoogle,
                    height: 30.adaptSize,
                    width: 30.adaptSize)),
            buttonStyle: CustomButtonStyles.fillGrayTL10,
            buttonTextStyle: theme.textTheme.bodyLarge!));
  }

  /// Section Widget
  Widget _buildApple(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            text: "lbl_apple".tr,
            margin: EdgeInsets.only(left: 11.h),
            leftIcon: Container(
                margin: EdgeInsets.only(right: 8.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgUimapple,
                    height: 30.adaptSize,
                    width: 30.adaptSize)),
            buttonStyle: CustomButtonStyles.fillGrayTL10,
            buttonTextStyle: theme.textTheme.bodyLarge!));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildGoogle(context), _buildApple(context)]);
  }

  /// Navigates to the previous screen.
  onTapArrowDown(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapTxtAlreadyhavean(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signInScreen,
    );
  }
}
