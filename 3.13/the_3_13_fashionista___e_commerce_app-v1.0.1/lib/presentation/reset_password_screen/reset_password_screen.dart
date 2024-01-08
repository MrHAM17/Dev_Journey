import 'bloc/reset_password_bloc.dart';
import 'models/reset_password_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_3_13_fashionista___e_commerce_app/core/utils/validation_functions.dart';
import 'package:the_3_13_fashionista___e_commerce_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:the_3_13_fashionista___e_commerce_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_3_13_fashionista___e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_3_13_fashionista___e_commerce_app/widgets/custom_elevated_button.dart';
import 'package:the_3_13_fashionista___e_commerce_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ResetPasswordBloc>(
        create: (context) => ResetPasswordBloc(
            ResetPasswordState(resetPasswordModelObj: ResetPasswordModel()))
          ..add(ResetPasswordInitialEvent()),
        child: ResetPasswordScreen());
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
                                horizontal: 16.h, vertical: 26.v),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("msg_enter_a_new_password".tr,
                                      style: theme.textTheme.bodyLarge)),
                              SizedBox(height: 47.v),
                              BlocBuilder<ResetPasswordBloc,
                                      ResetPasswordState>(
                                  builder: (context, state) {
                                return CustomTextFormField(
                                    controller: state.newpasswordController,
                                    hintText: "lbl_new_password".tr,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    suffix: InkWell(
                                        onTap: () {
                                          context.read<ResetPasswordBloc>().add(
                                              ChangePasswordVisibilityEvent(
                                                  value:
                                                      !state.isShowPassword));
                                        },
                                        child: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                30.h, 18.v, 16.h, 18.v),
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgIcon,
                                                height: 16.adaptSize,
                                                width: 16.adaptSize))),
                                    suffixConstraints:
                                        BoxConstraints(maxHeight: 52.v),
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidPassword(value,
                                              isRequired: true))) {
                                        return "err_msg_please_enter_valid_password"
                                            .tr;
                                      }
                                      return null;
                                    },
                                    obscureText: state.isShowPassword,
                                    contentPadding: EdgeInsets.only(
                                        left: 16.h, top: 14.v, bottom: 14.v));
                              }),
                              SizedBox(height: 20.v),
                              BlocBuilder<ResetPasswordBloc,
                                      ResetPasswordState>(
                                  builder: (context, state) {
                                return CustomTextFormField(
                                    controller: state.confirmpasswordController,
                                    hintText: "msg_confirm_password".tr,
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    suffix: InkWell(
                                        onTap: () {
                                          context.read<ResetPasswordBloc>().add(
                                              ChangePasswordVisibilityEvent1(
                                                  value:
                                                      !state.isShowPassword1));
                                        },
                                        child: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                30.h, 18.v, 16.h, 18.v),
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgIcon,
                                                height: 16.adaptSize,
                                                width: 16.adaptSize))),
                                    suffixConstraints:
                                        BoxConstraints(maxHeight: 52.v),
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidPassword(value,
                                              isRequired: true))) {
                                        return "err_msg_please_enter_valid_password"
                                            .tr;
                                      }
                                      return null;
                                    },
                                    obscureText: state.isShowPassword1,
                                    contentPadding: EdgeInsets.only(
                                        left: 16.h, top: 14.v, bottom: 14.v));
                              }),
                              Spacer(flex: 27),
                              CustomElevatedButton(
                                  text: "lbl_confirm".tr,
                                  onPressed: () {
                                    onTapConfirm(context);
                                  }),
                              Spacer(flex: 72)
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
        title: AppbarSubtitleOne(text: "lbl_reset_password".tr));
  }

  /// Navigates to the previous screen.
  onTapArrowDown(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the exploreShopScreen when the action is triggered.
  onTapConfirm(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.exploreShopScreen,
    );
  }
}
