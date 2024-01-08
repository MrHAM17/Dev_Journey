import 'package:flutter/material.dart';
import 'package:the_7_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegistersScreen extends StatelessWidget {
  RegistersScreen({Key? key}) : super(key: key);

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
                            padding: EdgeInsets.only(
                                left: 16.h, top: 73.v, right: 16.h),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Create a New Account",
                                      style: theme.textTheme.headlineMedium)),
                              SizedBox(height: 15.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("It’s fast and easy",
                                      style: CustomTextStyles
                                          .titleSmallBluegray40001)),
                              SizedBox(height: 24.v),
                              _buildFirstName1(context),
                              SizedBox(height: 16.v),
                              _buildEmail(context),
                              SizedBox(height: 16.v),
                              _buildPassword(context),
                              SizedBox(height: 40.v),
                              _buildRegister(context),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 50.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector,
            margin: EdgeInsets.fromLTRB(30.h, 17.v, 329.h, 17.v)));
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: CustomTextFormField(
                controller: firstNameController,
                hintText: "First Name",
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
                borderDecoration: TextFormFieldStyleHelper.fillIndigo,
                fillColor: appTheme.indigo50)));
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: CustomTextFormField(
                controller: lastNameController,
                hintText: "Last Name",
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
                borderDecoration: TextFormFieldStyleHelper.fillIndigo,
                fillColor: appTheme.indigo50)));
  }

  /// Section Widget
  Widget _buildFirstName1(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildFirstName(context), _buildLastName(context)]);
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "Email",
        textInputType: TextInputType.emailAddress,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
        borderDecoration: TextFormFieldStyleHelper.fillIndigo,
        fillColor: appTheme.indigo50);
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController,
        hintText: "Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 13.v, 16.h, 13.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgAntdesigneyeinvisiblefilled,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 50.v),
        obscureText: true,
        contentPadding: EdgeInsets.only(left: 16.h, top: 15.v, bottom: 15.v),
        borderDecoration: TextFormFieldStyleHelper.fillIndigo,
        fillColor: appTheme.indigo50);
  }

  /// Section Widget
  Widget _buildRegister(BuildContext context) {
    return CustomElevatedButton(
        text: "Register ",
        onPressed: () {
          onTapRegister(context);
        });
  }

  /// Navigates to the getStartedScreen when the action is triggered.
  onTapRegister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.getStartedScreen);
  }
}
