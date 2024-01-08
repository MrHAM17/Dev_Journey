import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_06_helthio___telehealth/core/app_export.dart';
import 'package:the_3_06_helthio___telehealth/core/utils/validation_functions.dart';
import 'package:the_3_06_helthio___telehealth/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_3_06_helthio___telehealth/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:the_3_06_helthio___telehealth/widgets/app_bar/custom_app_bar.dart';
import 'package:the_3_06_helthio___telehealth/widgets/custom_checkbox_button.dart';
import 'package:the_3_06_helthio___telehealth/widgets/custom_elevated_button.dart';
import 'package:the_3_06_helthio___telehealth/widgets/custom_text_form_field.dart';
import 'package:the_3_06_helthio___telehealth/presentation/sign_up_success_dialog/sign_up_success_dialog.dart';

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
                                horizontal: 24.h, vertical: 39.v),
                            child: Column(children: [
                              _buildName(context),
                              SizedBox(height: 16.v),
                              _buildEmail(context),
                              SizedBox(height: 16.v),
                              _buildPassword(context),
                              SizedBox(height: 16.v),
                              _buildCheckbox(context),
                              SizedBox(height: 28.v),
                              _buildSignUp(context),
                              SizedBox(height: 26.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 44.h),
                                      child: Row(children: [
                                        Text("msg_already_have_an".tr,
                                            style: CustomTextStyles
                                                .bodyMediumGray600),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtLogIn(context);
                                            },
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 4.h),
                                                child: Text("lbl_log_in2".tr,
                                                    style: CustomTextStyles
                                                        .titleSmallPrimarySemiBold)))
                                      ]))),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconChevronLeft,
            margin: EdgeInsets.only(left: 32.h, top: 8.v, bottom: 8.v)),
        centerTitle: true,
        title: AppbarSubtitleTwo(text: "lbl_sign_up".tr));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
        selector: (state) => state.nameController,
        builder: (context, nameController) {
          return CustomTextFormField(
              controller: nameController,
              hintText: "lbl_enter_your_name".tr,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(24.h, 16.v, 16.h, 16.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgLock,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              prefixConstraints: BoxConstraints(maxHeight: 56.v),
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              },
              contentPadding:
                  EdgeInsets.only(top: 18.v, right: 30.h, bottom: 18.v));
        });
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
        selector: (state) => state.emailController,
        builder: (context, emailController) {
          return CustomTextFormField(
              controller: emailController,
              hintText: "msg_enter_your_email".tr,
              textInputType: TextInputType.emailAddress,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(24.h, 16.v, 16.h, 16.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgCheckmark,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              prefixConstraints: BoxConstraints(maxHeight: 56.v),
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
              contentPadding:
                  EdgeInsets.only(top: 18.v, right: 30.h, bottom: 18.v));
        });
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(builder: (context, state) {
      return CustomTextFormField(
          controller: state.passwordController,
          hintText: "msg_enter_your_password".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
              margin: EdgeInsets.fromLTRB(24.h, 16.v, 16.h, 16.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgLocation,
                  height: 24.adaptSize,
                  width: 24.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 56.v),
          suffix: InkWell(
              onTap: () {
                context.read<SignUpBloc>().add(ChangePasswordVisibilityEvent(
                    value: !state.isShowPassword));
              },
              child: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 16.v, 24.h, 16.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgEye,
                      height: 24.adaptSize,
                      width: 24.adaptSize))),
          suffixConstraints: BoxConstraints(maxHeight: 56.v),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: state.isShowPassword);
    });
  }

  /// Section Widget
  Widget _buildCheckbox(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 28.h),
            child: BlocSelector<SignUpBloc, SignUpState, bool?>(
                selector: (state) => state.checkbox,
                builder: (context, checkbox) {
                  return CustomCheckboxButton(
                      alignment: Alignment.centerLeft,
                      text: "msg_i_agree_to_the_medidoc".tr,
                      isExpandedText: true,
                      value: checkbox,
                      onChange: (value) {
                        context
                            .read<SignUpBloc>()
                            .add(ChangeCheckBoxEvent(value: value));
                      });
                })));
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_sign_up".tr,
        onPressed: () {
          onTapSignUp(context);
        });
  }

  /// Displays a dialog with the [SignUpSuccessDialog] content.
  onTapSignUp(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: SignUpSuccessDialog.builder(context),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtLogIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
