import 'controller/sign_up_controller.dart';import 'package:flutter/material.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/utils/validation_functions.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/custom_checkbox_button.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/custom_elevated_button.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/custom_text_form_field.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/domain/googleauth/google_auth_helper.dart';
// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {SignUpScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 17.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgVectorOnprimarycontainer, height: 102.adaptSize, width: 102.adaptSize), SizedBox(height: 88.v), Text("msg_create_your_account".tr, style: theme.textTheme.headlineLarge), SizedBox(height: 43.v), CustomTextFormField(controller: controller.emailController, hintText: "lbl_email".tr, textInputType: TextInputType.emailAddress, prefix: Container(margin: EdgeInsets.fromLTRB(20.h, 20.v, 12.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgIconsGray500, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 60.v), validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, contentPadding: EdgeInsets.only(top: 21.v, right: 30.h, bottom: 21.v)), SizedBox(height: 20.v), Obx(() => CustomTextFormField(controller: controller.passwordController, hintText: "lbl_password".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, prefix: Container(margin: EdgeInsets.fromLTRB(20.h, 20.v, 12.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgLocation, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 60.v), suffix: InkWell(onTap: () {controller.isShowPassword.value = !controller.isShowPassword.value;}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 20.v, 20.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgEye, height: 20.adaptSize, width: 20.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 60.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: controller.isShowPassword.value, contentPadding: EdgeInsets.symmetric(vertical: 21.v))), SizedBox(height: 20.v), _buildRememberme(), SizedBox(height: 19.v), CustomElevatedButton(text: "lbl_sign_up".tr, onPressed: () {onTapSignUp();}), SizedBox(height: 55.v), _buildAutoLayoutHorizontal(), SizedBox(height: 31.v), Padding(padding: EdgeInsets.symmetric(horizontal: 38.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(height: 60.v, width: 88.h, padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 17.v), decoration: AppDecoration.outlineBlueGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: CustomImageView(imagePath: ImageConstant.imgIconsGray50, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.center)), Container(height: 60.v, width: 88.h, margin: EdgeInsets.only(left: 20.h), padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 17.v), decoration: AppDecoration.outlineBlueGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: CustomImageView(imagePath: ImageConstant.imgGoogle, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.center, onTap: () {onTapImgGoogle();})), Container(height: 60.v, width: 88.h, margin: EdgeInsets.only(left: 20.h), padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 17.v), decoration: AppDecoration.outlineBlueGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: CustomImageView(imagePath: ImageConstant.imgIcons, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.center))])), SizedBox(height: 46.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("msg_already_have_an".tr, style: theme.textTheme.bodyMedium), GestureDetector(onTap: () {onTapTxtSignIn();}, child: Padding(padding: EdgeInsets.only(left: 8.h), child: Text("lbl_sign_in".tr, style: CustomTextStyles.titleSmallOnPrimaryContainer)))]), SizedBox(height: 5.v)]))))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingImage(imagePath: ImageConstant.imgIconlyLightOutlineArrow, margin: EdgeInsets.fromLTRB(24.h, 11.v, 376.h, 11.v), onTap: () {onTapImage();})); } 
/// Section Widget
Widget _buildRememberme() { return Align(alignment: Alignment.centerLeft, child: Obx(() => CustomCheckboxButton(alignment: Alignment.centerLeft, text: "lbl_remember_me".tr, value: controller.rememberme.value, padding: EdgeInsets.symmetric(vertical: 3.v), onChange: (value) {controller.rememberme.value = value;}))); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal() { return Padding(padding: EdgeInsets.symmetric(horizontal: 10.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(top: 11.v, bottom: 9.v), child: SizedBox(width: 96.h, child: Divider())), Text("msg_or_continue_with".tr, style: CustomTextStyles.titleMediumGray70001), Padding(padding: EdgeInsets.only(top: 11.v, bottom: 9.v), child: SizedBox(width: 96.h, child: Divider()))])); } 

/// Navigates to the previous screen.
onTapImage() { Get.back(); } 
/// Navigates to the profileScreen when the action is triggered.
onTapSignUp() { Get.toNamed(AppRoutes.profileScreen, ); } 
onTapImgGoogle() async  {         await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            //TODO Actions to be performed after signin
          } else {
            Get.snackbar('Error', 'user data is empty');
          }
        }).catchError((onError) {
            Get.snackbar('Error', onError.toString());
        });
         } 
/// Navigates to the letsYouInScreen when the action is triggered.
onTapTxtSignIn() { Get.toNamed(AppRoutes.letsYouInScreen, ); } 
 }
