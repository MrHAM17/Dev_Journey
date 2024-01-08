import 'bloc/security_bloc.dart';import 'models/security_model.dart';import 'package:flutter/material.dart';import 'package:the_3_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/custom_switch.dart';class SecurityScreen extends StatelessWidget {const SecurityScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<SecurityBloc>(create: (context) => SecurityBloc(SecurityState(securityModelObj: SecurityModel()))..add(SecurityInitialEvent()), child: SecurityScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 20.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("lbl_control".tr, style: theme.textTheme.titleLarge)), SizedBox(height: 26.v), _buildAutoLayoutHorizontal(context, manageDevices: "lbl_security_alerts".tr, arrowRight: ImageConstant.imgArrowRightGray900), SizedBox(height: 26.v), _buildAutoLayoutHorizontal(context, manageDevices: "lbl_manage_devices".tr, arrowRight: ImageConstant.imgArrowRightGray900), SizedBox(height: 25.v), _buildAutoLayoutHorizontal(context, manageDevices: "msg_manage_permission".tr, arrowRight: ImageConstant.imgArrowRightGray900), SizedBox(height: 26.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_security".tr, style: theme.textTheme.titleLarge)), SizedBox(height: 22.v), _buildAutoLayoutHorizontal4(context), SizedBox(height: 25.v), _buildAutoLayoutHorizontal5(context), SizedBox(height: 25.v), _buildAutoLayoutHorizontal6(context), SizedBox(height: 27.v), _buildAutoLayoutHorizontal(context, manageDevices: "msg_google_authenticator".tr, arrowRight: ImageConstant.imgArrowRightPrimary), SizedBox(height: 23.v), CustomElevatedButton(text: "lbl_change_pin".tr, buttonStyle: CustomButtonStyles.fillDeepOrange, buttonTextStyle: CustomTextStyles.titleMediumPrimary), SizedBox(height: 24.v), CustomElevatedButton(text: "lbl_change_password".tr, buttonStyle: CustomButtonStyles.fillDeepOrange, buttonTextStyle: CustomTextStyles.titleMediumPrimary), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 51.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 13.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "lbl_security".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal4(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("lbl_remember_me".tr, style: CustomTextStyles.titleMediumErrorContainerSemiBold)), BlocSelector<SecurityBloc, SecurityState, bool?>(selector: (state) => state.isSelectedSwitch, builder: (context, isSelectedSwitch) {return CustomSwitch(value: isSelectedSwitch, onChange: (value) {context.read<SecurityBloc>().add(ChangeSwitchEvent(value: value));});})]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal5(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("lbl_face_id".tr, style: CustomTextStyles.titleMediumErrorContainerSemiBold)), BlocSelector<SecurityBloc, SecurityState, bool?>(selector: (state) => state.isSelectedSwitch1, builder: (context, isSelectedSwitch1) {return CustomSwitch(value: isSelectedSwitch1, onChange: (value) {context.read<SecurityBloc>().add(ChangeSwitch1Event(value: value));});})]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal6(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("lbl_biometric_id".tr, style: CustomTextStyles.titleMediumErrorContainerSemiBold)), BlocSelector<SecurityBloc, SecurityState, bool?>(selector: (state) => state.isSelectedSwitch2, builder: (context, isSelectedSwitch2) {return CustomSwitch(value: isSelectedSwitch2, onChange: (value) {context.read<SecurityBloc>().add(ChangeSwitch2Event(value: value));});})]); } 
/// Common widget
Widget _buildAutoLayoutHorizontal(BuildContext context, {required String manageDevices, required String arrowRight, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text(manageDevices, style: CustomTextStyles.titleMediumSemiBold_1.copyWith(color: appTheme.gray900))), CustomImageView(imagePath: arrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(bottom: 3.v))]); } 

/// Navigates to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
 }