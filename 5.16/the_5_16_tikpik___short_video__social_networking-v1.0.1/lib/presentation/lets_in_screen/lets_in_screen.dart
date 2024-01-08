import 'models/lets_in_model.dart';import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';import 'package:the_5_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';import 'package:the_5_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';import 'package:the_5_16_tikpik___short_video__social_networking/widgets/custom_outlined_button.dart';import 'provider/lets_in_provider.dart';import 'package:the_5_16_tikpik___short_video__social_networking/domain/facebookauth/facebook_auth_helper.dart';import 'package:the_5_16_tikpik___short_video__social_networking/domain/googleauth/google_auth_helper.dart';class LetsInScreen extends StatefulWidget {const LetsInScreen({Key? key}) : super(key: key);

@override LetsInScreenState createState() =>  LetsInScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => LetsInProvider(), child: LetsInScreen()); } 
 }
class LetsInScreenState extends State<LetsInScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 47.v), child: Column(children: [SizedBox(height: 41.v), Text("msg_let_s_sign_you_in".tr, style: theme.textTheme.displayMedium), SizedBox(height: 63.v), _buildContinueWithGoogle(context), SizedBox(height: 16.v), _buildContinueWithFacebook(context), SizedBox(height: 16.v), _buildContinueWithApple(context), SizedBox(height: 37.v), _buildAutoLayoutHorizontal(context), SizedBox(height: 33.v), _buildSignInWithPassword(context), Spacer(), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("msg_don_t_have_an_account".tr, style: theme.textTheme.bodyMedium)), GestureDetector(onTap: () {onTapTxtSignUp(context);}, child: Padding(padding: EdgeInsets.only(left: 8.h), child: Text("lbl_sign_up".tr, style: CustomTextStyles.titleSmallPrimary)))])])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 427.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgGroup, margin: EdgeInsets.fromLTRB(28.h, 16.v, 380.h, 16.v))); } 
/// Section Widget
Widget _buildContinueWithGoogle(BuildContext context) { return CustomOutlinedButton(height: 60.v, text: "msg_continue_with_google".tr, leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgFrame, height: 24.v, width: 23.h)), buttonStyle: CustomButtonStyles.outlineGray, onPressed: () {onTapContinueWithGoogle(context);}); } 
/// Section Widget
Widget _buildContinueWithFacebook(BuildContext context) { return CustomOutlinedButton(height: 60.v, text: "msg_continue_with_facebook".tr, leftIcon: Container(margin: EdgeInsets.only(right: 11.h), child: CustomImageView(imagePath: ImageConstant.imgLogosfacebook, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.outlineGray, onPressed: () {onTapContinueWithFacebook(context);}); } 
/// Section Widget
Widget _buildContinueWithApple(BuildContext context) { return CustomOutlinedButton(height: 60.v, text: "msg_continue_with_apple".tr, leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgFrameBlack900, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.outlineGray); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 10.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 9.v, bottom: 11.v), child: SizedBox(width: 155.h, child: Divider())), Text("lbl_or".tr, style: CustomTextStyles.titleMediumGray700), Padding(padding: EdgeInsets.only(top: 9.v, bottom: 11.v), child: SizedBox(width: 155.h, child: Divider()))])); } 
/// Section Widget
Widget _buildSignInWithPassword(BuildContext context) { return CustomElevatedButton(text: "msg_sign_in_with_password".tr, buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer16, onPressed: () {onTapSignInWithPassword(context);}); } 
onTapContinueWithGoogle(BuildContext context) async  {             await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
              //TODO Actions to be performed after signin
              }).catchError((onError) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(onError.toString())));
            });
             } 
onTapContinueWithFacebook(BuildContext context) async  {         await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            //TODO Actions to be performed after signin
          } else {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('user data is empty')));
          }
        }).catchError((onError) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(onError.toString())));
        });
         } 
/// Navigates to the signInBlankFormScreen when the action is triggered.
onTapSignInWithPassword(BuildContext context) { NavigatorService.pushNamed(AppRoutes.signInBlankFormScreen, ); } 
/// Navigates to the signUpBlankFormScreen when the action is triggered.
onTapTxtSignUp(BuildContext context) { NavigatorService.pushNamed(AppRoutes.signUpBlankFormScreen, ); } 
 }
