import 'bloc/report_bloc.dart';import 'models/report_model.dart';import 'package:flutter/material.dart';import 'package:the_3_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/custom_radio_button.dart';class ReportScreen extends StatelessWidget {const ReportScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<ReportBloc>(create: (context) => ReportBloc(ReportState(reportModelObj: ReportModel()))..add(ReportInitialEvent()), child: ReportScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 17.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_select_a_reason".tr, style: CustomTextStyles.titleMediumMedium), SizedBox(height: 25.v), _buildSelectAReason(context), SizedBox(height: 5.v)])), bottomNavigationBar: _buildAutoLayoutHorizontal(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 14.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "lbl_report".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildSelectAReason(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 71.h), child: BlocBuilder<ReportBloc, ReportState>(builder: (context, state) {return state.reportModelObj!.radioList.isNotEmpty ? Column(children: [Padding(padding: EdgeInsets.only(right: 59.h), child: CustomRadioButton(text: "msg_violent_graphic".tr, value: state.reportModelObj?.radioList[0] ?? "", groupValue: state.selectAReason, onChange: (value) {context.read<ReportBloc>().add(ChangeRadioButtonEvent(value: value));})), Padding(padding: EdgeInsets.only(top: 21.v, right: 152.h), child: CustomRadioButton(text: "lbl_animal_cruelty".tr, value: state.reportModelObj?.radioList[1] ?? "", groupValue: state.selectAReason, onChange: (value) {context.read<ReportBloc>().add(ChangeRadioButtonEvent(value: value));})), Padding(padding: EdgeInsets.only(top: 21.v, right: 96.h), child: CustomRadioButton(text: "msg_pornography_nudity".tr, value: state.reportModelObj?.radioList[2] ?? "", groupValue: state.selectAReason, onChange: (value) {context.read<ReportBloc>().add(ChangeRadioButtonEvent(value: value));})), Padding(padding: EdgeInsets.only(top: 21.v, right: 168.h), child: CustomRadioButton(text: "lbl_hate_speech".tr, value: state.reportModelObj?.radioList[3] ?? "", groupValue: state.selectAReason, onChange: (value) {context.read<ReportBloc>().add(ChangeRadioButtonEvent(value: value));})), Padding(padding: EdgeInsets.only(top: 21.v, right: 87.h), child: CustomRadioButton(text: "msg_harassment_or_bullying".tr, value: state.reportModelObj?.radioList[4] ?? "", groupValue: state.selectAReason, onChange: (value) {context.read<ReportBloc>().add(ChangeRadioButtonEvent(value: value));})), Padding(padding: EdgeInsets.only(top: 21.v), child: CustomRadioButton(text: "msg_intellectual_property".tr, value: state.reportModelObj?.radioList[5] ?? "", groupValue: state.selectAReason, onChange: (value) {context.read<ReportBloc>().add(ChangeRadioButtonEvent(value: value));})), Padding(padding: EdgeInsets.only(top: 21.v, right: 224.h), child: CustomRadioButton(text: "lbl_spam".tr, value: state.reportModelObj?.radioList[6] ?? "", groupValue: state.selectAReason, onChange: (value) {context.read<ReportBloc>().add(ChangeRadioButtonEvent(value: value));})), Padding(padding: EdgeInsets.only(top: 20.v, right: 167.h), child: CustomRadioButton(text: "lbl_minor_safety".tr, value: state.reportModelObj?.radioList[7] ?? "", groupValue: state.selectAReason, onChange: (value) {context.read<ReportBloc>().add(ChangeRadioButtonEvent(value: value));})), Padding(padding: EdgeInsets.only(top: 21.v, right: 225.h), child: CustomRadioButton(text: "lbl_other".tr, value: state.reportModelObj?.radioList[8] ?? "", groupValue: state.selectAReason, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {context.read<ReportBloc>().add(ChangeRadioButtonEvent(value: value));}))]) : Container();})); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomElevatedButton(width: 184.h, text: "lbl_cancel".tr, buttonStyle: CustomButtonStyles.fillDeepOrange, buttonTextStyle: CustomTextStyles.titleMediumPrimary), CustomElevatedButton(width: 184.h, text: "lbl_submit".tr, margin: EdgeInsets.only(left: 12.h), buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer16)])); } 

/// Navigates to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
 }