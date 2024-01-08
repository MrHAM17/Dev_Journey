import 'package:flutter/material.dart';import 'package:the_7_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class FormEmptyScreen extends StatelessWidget {FormEmptyScreen({Key? key}) : super(key: key);

TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 50.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("Let’s Sign In 👇 ", style: theme.textTheme.headlineSmall)), SizedBox(height: 30.v), Align(alignment: Alignment.centerLeft, child: Text("quis nostrud exercitation ullamco laboris nisi ut", style: theme.textTheme.bodyMedium)), SizedBox(height: 50.v), _buildEmail(context), SizedBox(height: 15.v), _buildPassword(context), SizedBox(height: 12.v), _buildForgotPassword(context), SizedBox(height: 35.v), _buildLogin(context), SizedBox(height: 18.v), _buildItemSeparator(context), SizedBox(height: 18.v), _buildGoogle(context), SizedBox(height: 5.v)]))))), bottomNavigationBar: _buildSeventySeven(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.fromLTRB(24.h, 3.v, 301.h, 3.v), onTap: () {onTapArrowLeft(context);})); } 
/// Section Widget
Widget _buildEmail(BuildContext context) { return CustomTextFormField(controller: emailController, hintText: "Email", hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer, textInputType: TextInputType.emailAddress, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 25.v, 10.h, 24.v), child: CustomImageView(imagePath: ImageConstant.imgDownload, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 70.v), contentPadding: EdgeInsets.only(top: 26.v, right: 30.h, bottom: 26.v)); } 
/// Section Widget
Widget _buildPassword(BuildContext context) { return CustomTextFormField(controller: passwordController, hintText: "Password", hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 25.v, 10.h, 24.v), child: CustomImageView(imagePath: ImageConstant.imgLocation, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 70.v), obscureText: true, contentPadding: EdgeInsets.only(top: 26.v, right: 30.h, bottom: 26.v)); } 
/// Section Widget
Widget _buildForgotPassword(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("Forgot password?", style: CustomTextStyles.titleSmallPrimary), Text("Show password", style: CustomTextStyles.titleSmallMedium)]); } 
/// Section Widget
Widget _buildLogin(BuildContext context) { return CustomElevatedButton(text: "Login"); } 
/// Section Widget
Widget _buildOR(BuildContext context) { return CustomElevatedButton(height: 25.v, width: 35.h, text: "OR", buttonStyle: CustomButtonStyles.fillWhiteA1, buttonTextStyle: CustomTextStyles.labelMediumOnPrimaryContainer, alignment: Alignment.center); } 
/// Section Widget
Widget _buildItemSeparator(BuildContext context) { return SizedBox(height: 25.v, width: 327.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(bottom: 11.v), child: SizedBox(width: 327.h, child: Divider(color: appTheme.blueGray50)))), _buildOR(context)])); } 
/// Section Widget
Widget _buildGoogle(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(height: 70.v, width: 158.h, padding: EdgeInsets.symmetric(vertical: 22.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: CustomImageView(imagePath: ImageConstant.imgGoogle, height: 25.adaptSize, width: 25.adaptSize, alignment: Alignment.topCenter)), Container(height: 70.v, width: 158.h, padding: EdgeInsets.symmetric(vertical: 22.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: CustomImageView(imagePath: ImageConstant.imgFacebook, height: 25.adaptSize, width: 25.adaptSize, alignment: Alignment.topCenter))]); } 
/// Section Widget
Widget _buildSeventySeven(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 78.h, right: 78.h, bottom: 24.v), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("Don’t have an account?", style: theme.textTheme.bodyMedium)), GestureDetector(onTap: () {onTapTxtRegister(context);}, child: Padding(padding: EdgeInsets.only(left: 13.h), child: Text("Register", style: CustomTextStyles.titleSmallPrimaryBold)))])); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the registerFormEmptyScreen when the action is triggered.
onTapTxtRegister(BuildContext context) { Navigator.pushNamed(context, AppRoutes.registerFormEmptyScreen); } 
 }
