import 'package:flutter/material.dart';
import 'package:the_7_10_social___social_networking/core/app_export.dart';
import 'package:the_7_10_social___social_networking/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_7_10_social___social_networking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_10_social___social_networking/widgets/custom_elevated_button.dart';
import 'package:the_7_10_social___social_networking/widgets/custom_radio_button.dart';
import 'package:the_7_10_social___social_networking/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

  String gender = "";

  List<String> radioList = ["lbl_female", "lbl_male"];

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.deepPurpleA200,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
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
                  horizontal: 16.h,
                  vertical: 37.v,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Create a New Account",
                        style: CustomTextStyles.headlineLargePrimary,
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "It’s fast and easy",
                        style: CustomTextStyles.bodyLargePrimary,
                      ),
                    ),
                    SizedBox(height: 21.v),
                    _buildFirstName1(context),
                    SizedBox(height: 16.v),
                    _buildEmail(context),
                    SizedBox(height: 16.v),
                    _buildPhone(context),
                    SizedBox(height: 16.v),
                    _buildDateOfBirth(context),
                    SizedBox(height: 26.v),
                    _buildFemale(context),
                    SizedBox(height: 42.v),
                    Container(
                      width: 367.h,
                      margin: EdgeInsets.only(
                        left: 8.h,
                        right: 5.h,
                      ),
                      child: Text(
                        "By clicking Register, you agree to our Data Policy and Cookie Policy. You will receive an SMS Notification from Facebook and can decline it at any time.",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                    SizedBox(height: 25.v),
                    _buildSignUp(context),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 47.v,
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.fromLTRB(26.h, 10.v, 364.h, 10.v),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 8.h),
        child: CustomTextFormField(
          controller: firstNameController,
          hintText: "First Name",
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: CustomTextFormField(
          controller: lastNameController,
          hintText: "Last Name",
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstName1(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildFirstName(context),
        _buildLastName(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "Email Id",
      textInputType: TextInputType.emailAddress,
    );
  }

  /// Section Widget
  Widget _buildPhone(BuildContext context) {
    return CustomTextFormField(
      controller: phoneController,
      hintText: "Phone No.",
      textInputType: TextInputType.phone,
    );
  }

  /// Section Widget
  Widget _buildDateOfBirth(BuildContext context) {
    return CustomTextFormField(
      controller: dateOfBirthController,
      hintText: "Date of Birth",
      textInputAction: TextInputAction.done,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 13.v, 16.h, 13.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgCalendartoday,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 50.v,
      ),
      contentPadding: EdgeInsets.only(
        left: 16.h,
        top: 15.v,
        bottom: 15.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildFemale(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Gender",
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 8.v),
        Row(
          children: [
            CustomRadioButton(
              text: "Female",
              value: radioList[0],
              groupValue: gender,
              padding: EdgeInsets.fromLTRB(8.h, 14.v, 30.h, 14.v),
              onChange: (value) {
                gender = value;
              },
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: CustomRadioButton(
                text: "Male",
                value: radioList[1],
                groupValue: gender,
                padding: EdgeInsets.fromLTRB(8.h, 14.v, 30.h, 14.v),
                onChange: (value) {
                  gender = value;
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
      text: "Sign Up",
      buttonStyle: CustomButtonStyles.fillPrimary,
    );
  }
}
