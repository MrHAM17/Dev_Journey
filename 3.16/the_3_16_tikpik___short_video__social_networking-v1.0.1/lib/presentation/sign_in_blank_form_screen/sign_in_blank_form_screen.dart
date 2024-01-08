import 'bloc/sign_in_blank_form_bloc.dart';import 'models/sign_in_blank_form_model.dart';import 'package:flutter/material.dart';import 'package:the_3_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/core/utils/validation_functions.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/custom_checkbox_button.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/custom_text_form_field.dart';import 'package:the_3_16_tikpik___short_video__social_networking/domain/googleauth/google_auth_helper.dart';
// ignore_for_file: must_be_immutable
class SignInBlankFormScreen extends StatelessWidget {SignInBlankFormScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

static Widget builder(BuildContext context) { return BlocProvider<SignInBlankFormBloc>(create: (context) => SignInBlankFormBloc(SignInBlankFormState(signInBlankFormModelObj: SignInBlankFormModel()))..add(SignInBlankFormInitialEvent()), child: SignInBlankFormScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 47.v), child: Column(children: [SizedBox(height: 22.v), Align(alignment: Alignment.centerLeft, child: Container(width: 288.h, margin: EdgeInsets.only(right: 92.h), child: Text("msg_login_to_your_account".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.displayMedium!.copyWith(height: 1.20)))), SizedBox(height: 44.v), BlocSelector<SignInBlankFormBloc, SignInBlankFormState, TextEditingController?>(selector: (state) => state.emailController, builder: (context, emailController) {return CustomTextFormField(controller: emailController, hintText: "lbl_email".tr, hintStyle: theme.textTheme.bodyMedium!, textInputType: TextInputType.emailAddress, prefix: Container(margin: EdgeInsets.fromLTRB(20.h, 18.v, 12.h, 22.v), child: CustomImageView(imagePath: ImageConstant.imgCheckmark, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 60.v), validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, contentPadding: EdgeInsets.only(top: 21.v, right: 30.h, bottom: 21.v));}), SizedBox(height: 24.v), BlocBuilder<SignInBlankFormBloc, SignInBlankFormState>(builder: (context, state) {return CustomTextFormField(controller: state.passwordController, hintText: "lbl_password".tr, hintStyle: theme.textTheme.bodyMedium!, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, prefix: Container(margin: EdgeInsets.fromLTRB(20.h, 18.v, 12.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgLocation, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 56.v), suffix: InkWell(onTap: () {context.read<SignInBlankFormBloc>().add(ChangePasswordVisibilityEvent(value: !state.isShowPassword));}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgEye, height: 20.adaptSize, width: 20.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 56.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: state.isShowPassword);}), SizedBox(height: 24.v), _buildRememberme(context), SizedBox(height: 24.v), CustomElevatedButton(height: 55.v, text: "lbl_sign_in".tr, buttonStyle: CustomButtonStyles.fillBlueGray, buttonTextStyle: CustomTextStyles.titleMediumGray60016, onPressed: () {onTapSignIn(context);}), SizedBox(height: 27.v), GestureDetector(onTap: () {onTapTxtForgotThePassword(context);}, child: Text("msg_forgot_the_password".tr, style: CustomTextStyles.titleMediumPrimarySemiBold)), SizedBox(height: 63.v), _buildAutoLayoutHorizontal(context), SizedBox(height: 31.v), _buildWidget(context), SizedBox(height: 46.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("msg_don_t_have_an_account".tr, style: theme.textTheme.bodyMedium)), GestureDetector(onTap: () {onTapTxtSignUp(context);}, child: Padding(padding: EdgeInsets.only(left: 8.h), child: Text("lbl_sign_up".tr, style: CustomTextStyles.titleSmallPrimary)))])]))))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 427.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgGroup, margin: EdgeInsets.fromLTRB(28.h, 16.v, 380.h, 16.v))); } 
/// Section Widget
Widget _buildRememberme(BuildContext context) { return Align(alignment: Alignment.centerLeft, child: BlocSelector<SignInBlankFormBloc, SignInBlankFormState, bool?>(selector: (state) => state.rememberme, builder: (context, rememberme) {return CustomCheckboxButton(alignment: Alignment.centerLeft, text: "lbl_remember_me".tr, value: rememberme, padding: EdgeInsets.symmetric(vertical: 3.v), onChange: (value) {context.read<SignInBlankFormBloc>().add(ChangeCheckBoxEvent(value: value));});})); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 11.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(top: 11.v, bottom: 9.v), child: SizedBox(width: 96.h, child: Divider())), Text("msg_or_continue_with".tr, style: CustomTextStyles.titleMediumGray700), Padding(padding: EdgeInsets.only(top: 11.v, bottom: 9.v), child: SizedBox(width: 96.h, child: Divider()))])); } 
/// Section Widget
Widget _buildWidget(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(height: 60.v, width: 111.h, padding: EdgeInsets.symmetric(horizontal: 42.h, vertical: 17.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: CustomImageView(imagePath: ImageConstant.imgAutoLayoutHorizontal, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.center)), Container(height: 60.v, width: 111.h, padding: EdgeInsets.symmetric(horizontal: 42.h, vertical: 17.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: CustomImageView(imagePath: ImageConstant.imgFrame, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.center, onTap: () {onTapImgImage(context);})), Container(height: 60.v, width: 111.h, padding: EdgeInsets.symmetric(horizontal: 42.h, vertical: 17.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: CustomImageView(imagePath: ImageConstant.imgFrameBlack900, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.center))]); } 
/// Navigates to the chooseYourInterestScreen when the action is triggered.
onTapSignIn(BuildContext context) { NavigatorService.pushNamed(AppRoutes.chooseYourInterestScreen, ); } 
/// Navigates to the forgotPasswordMethodsScreen when the action is triggered.
onTapTxtForgotThePassword(BuildContext context) { NavigatorService.pushNamed(AppRoutes.forgotPasswordMethodsScreen, ); } 
onTapImgImage(BuildContext context) async  {         await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            //TODO Actions to be performed after signin
          } else {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('user data is empty')));
          }
        }).catchError((onError) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(onError.toString())));
        });
         } 
/// Navigates to the signUpBlankFormScreen when the action is triggered.
onTapTxtSignUp(BuildContext context) { NavigatorService.pushNamed(AppRoutes.signUpBlankFormScreen, ); } 
 }