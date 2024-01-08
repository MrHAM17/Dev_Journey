import 'package:flutter/material.dart';
import 'package:the_7_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_drop_down.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_elevated_button.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_floating_text_field.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_text_form_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  SignUpPageState createState() => SignUpPageState();
}

// ignore_for_file: must_be_immutable
class SignUpPageState extends State<SignUpPage>
    with AutomaticKeepAliveClientMixin<SignUpPage> {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController checkmarkController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

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
                              SizedBox(height: 70.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 24.h),
                                  child: Column(children: [
                                    _buildInputField(context),
                                    SizedBox(height: 23.v),
                                    _buildInputField1(context),
                                    SizedBox(height: 23.v),
                                    _buildInputField2(context),
                                    SizedBox(height: 24.v),
                                    _buildPassword(context),
                                    SizedBox(height: 23.v),
                                    _buildInputField3(context),
                                    SizedBox(height: 23.v),
                                    _buildJan(context),
                                    SizedBox(height: 23.v),
                                    _buildSignUp(context),
                                    SizedBox(height: 73.v),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 27.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("Already have an account?",
                                                  style: CustomTextStyles
                                                      .titleMediumGray500),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 5.h),
                                                  child: Text("Sign In",
                                                      style: CustomTextStyles
                                                          .titleMediumPrimary))
                                            ]))
                                  ]))
                            ])))))));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return CustomTextFormField(
        controller: nameController,
        hintText: "Dmitry Ponomarev ",
        suffix: Container(
            margin: EdgeInsets.only(left: 30.h, top: 4.v, bottom: 10.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgCheckmark,
                height: 13.adaptSize,
                width: 13.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 27.v));
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Name", style: CustomTextStyles.titleMediumSecondaryContainer_1),
      _buildName(context)
    ]);
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "xyz@gmail.com",
        textInputType: TextInputType.emailAddress);
  }

  /// Section Widget
  Widget _buildInputField1(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Email", style: CustomTextStyles.titleMediumSecondaryContainer_1),
      SizedBox(height: 1.v),
      _buildEmail(context)
    ]);
  }

  /// Section Widget
  Widget _buildCheckmark(BuildContext context) {
    return CustomTextFormField(
        width: 326.h,
        controller: checkmarkController,
        hintText: "+1-123-456-7890",
        alignment: Alignment.bottomCenter,
        suffix: Container(
            margin: EdgeInsets.only(left: 30.h, top: 5.v, bottom: 10.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgCheckmark,
                height: 13.adaptSize,
                width: 13.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 28.v));
  }

  /// Section Widget
  Widget _buildInputField2(BuildContext context) {
    return SizedBox(
        height: 51.v,
        width: 327.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          _buildCheckmark(context),
          Align(
              alignment: Alignment.topLeft,
              child: Text("Phone",
                  style: CustomTextStyles.titleMediumSecondaryContainer_1))
        ]));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomFloatingTextField(
        controller: passwordController,
        labelText: "Password",
        labelStyle: theme.textTheme.bodyMedium!,
        hintText: "Password",
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
        suffix: SizedBox(
            child: CustomImageView(
                imagePath: ImageConstant.imgContrast,
                height: 10.v,
                width: 16.h)),
        suffixConstraints: BoxConstraints(maxHeight: 51.v));
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return CustomTextFormField(
        controller: confirmpasswordController,
        hintText: "xyz123",
        textInputAction: TextInputAction.done,
        suffix: Container(
            margin: EdgeInsets.only(left: 30.h, top: 3.v, bottom: 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgContrast,
                height: 10.v,
                width: 16.h)),
        suffixConstraints: BoxConstraints(maxHeight: 26.v));
  }

  /// Section Widget
  Widget _buildInputField3(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Confirm Password",
          style: CustomTextStyles.titleMediumSecondaryContainer_1),
      SizedBox(height: 1.v),
      _buildConfirmpassword(context)
    ]);
  }

  /// Section Widget
  Widget _buildJan(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      SizedBox(
          height: 52.v,
          width: 155.h,
          child: Stack(alignment: Alignment.topLeft, children: [
            CustomDropDown(
                width: 153.h,
                hintText: "20 - Jan - 1998",
                alignment: Alignment.bottomCenter,
                items: dropdownItemList,
                onChanged: (value) {}),
            Align(
                alignment: Alignment.topLeft,
                child: Text("Date Of Birth",
                    style: CustomTextStyles.titleMediumSecondaryContainer_1))
          ])),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("Country/Region",
            style: CustomTextStyles.titleMediumSecondaryContainer_1),
        CustomDropDown(
            width: 156.h,
            hintText: "United States",
            items: dropdownItemList1,
            onChanged: (value) {})
      ])
    ]);
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
        text: "Sign Up",
        onPressed: () {
          onTapSignUp(context);
        });
  }

  /// Navigates to the countryOrRegionScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.countryOrRegionScreen);
  }
}
