import 'models/security_model.dart';import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_5_07_comfort___hotel_booking_app/widgets/app_bar/appbar_title.dart';import 'package:the_5_07_comfort___hotel_booking_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_5_07_comfort___hotel_booking_app/widgets/custom_elevated_button.dart';import 'package:the_5_07_comfort___hotel_booking_app/widgets/custom_switch.dart';import 'provider/security_provider.dart';class SecurityScreen extends StatefulWidget {const SecurityScreen({Key? key}) : super(key: key);

@override SecurityScreenState createState() =>  SecurityScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SecurityProvider(), child: SecurityScreen()); } 
 }
class SecurityScreenState extends State<SecurityScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(children: [_buildAutoLayoutHorizontal(context), SizedBox(height: 31.v), _buildAutoLayoutHorizontal1(context), SizedBox(height: 31.v), _buildAutoLayoutHorizontal2(context), SizedBox(height: 33.v), _buildGoogleAuthenticator(context), SizedBox(height: 49.v), CustomElevatedButton(text: "lbl_change_password".tr, buttonStyle: CustomButtonStyles.fillBlueGray), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 16.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "lbl_security".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("lbl_face_id".tr, style: CustomTextStyles.titleMediumSemiBold_1)), Selector<SecurityProvider, bool?>(selector: (context, provider) => provider.isSelectedSwitch, builder: (context, isSelectedSwitch, child) {return CustomSwitch(value: isSelectedSwitch, onChange: (value) {context.read<SecurityProvider>().changeSwitchBox1(value);});})]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal1(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("lbl_remember_me".tr, style: CustomTextStyles.titleMediumSemiBold_1)), Selector<SecurityProvider, bool?>(selector: (context, provider) => provider.isSelectedSwitch1, builder: (context, isSelectedSwitch1, child) {return CustomSwitch(value: isSelectedSwitch1, onChange: (value) {context.read<SecurityProvider>().changeSwitchBox2(value);});})]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal2(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("lbl_touch_id".tr, style: CustomTextStyles.titleMediumSemiBold_1)), Selector<SecurityProvider, bool?>(selector: (context, provider) => provider.isSelectedSwitch2, builder: (context, isSelectedSwitch2, child) {return CustomSwitch(value: isSelectedSwitch2, onChange: (value) {context.read<SecurityProvider>().changeSwitchBox3(value);});})]); } 
/// Section Widget
Widget _buildGoogleAuthenticator(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("msg_google_authenticator".tr, style: CustomTextStyles.titleMediumSemiBold_1)), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(bottom: 3.v))]); } 

/// Navigates to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
 }
