import 'bloc/summary_bloc.dart';import 'models/summary_model.dart';import 'package:flutter/material.dart';import 'package:the_3_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_3_17_housit___buyrentsell_property/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_3_17_housit___buyrentsell_property/widgets/app_bar/appbar_subtitle.dart';import 'package:the_3_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';import 'package:the_3_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';import 'package:the_3_17_housit___buyrentsell_property/widgets/custom_icon_button.dart';import 'package:the_3_17_housit___buyrentsell_property/presentation/summary_change_payment_bottomsheet/summary_change_payment_bottomsheet.dart';class SummaryScreen extends StatelessWidget {const SummaryScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<SummaryBloc>(create: (context) => SummaryBloc(SummaryState(summaryModelObj: SummaryModel()))..add(SummaryInitialEvent()), child: SummaryScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<SummaryBloc, SummaryState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v), child: Column(children: [SizedBox(height: 6.v), _buildEstatesCardTransaction(context), SizedBox(height: 39.v), _buildPaymentDetail(context), SizedBox(height: 39.v), _buildPaymentMethod(context), SizedBox(height: 62.v), CustomImageView(imagePath: ImageConstant.imgProgressBarGradient, height: 1.v, width: 100.h)])), bottomNavigationBar: _buildPayRent(context)));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "msg_transaction_review".tr)); } 
/// Section Widget
Widget _buildEstatesCardTransaction(BuildContext context) { return Container(padding: EdgeInsets.symmetric(vertical: 8.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [SizedBox(height: 140.v, width: 168.h, child: Stack(alignment: Alignment.centerLeft, children: [CustomImageView(imagePath: ImageConstant.imgShape20, height: 140.v, width: 168.h, radius: BorderRadius.circular(18.h), alignment: Alignment.center), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 8.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomIconButton(height: 25.adaptSize, width: 25.adaptSize, padding: EdgeInsets.all(6.h), decoration: IconButtonStyleHelper.fillWhiteATL121, child: CustomImageView(imagePath: ImageConstant.imgFavoriteRedA200)), SizedBox(height: 75.v), CustomElevatedButton(height: 24.v, width: 72.h, text: "lbl_apartment".tr, leftIcon: Container(margin: EdgeInsets.only(right: 6.h), child: CustomImageView(imagePath: ImageConstant.imgClose, height: 13.v, width: 11.h)), buttonStyle: CustomButtonStyles.fillBlueGrayAfTL8, buttonTextStyle: CustomTextStyles.labelSmallGray100)])))])), Padding(padding: EdgeInsets.symmetric(vertical: 8.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(width: 88.h, child: Text("msg_sky_dandelions_apartment".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.labelLarge!.copyWith(height: 1.50))), SizedBox(height: 6.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgLinkedin, height: 12.adaptSize, width: 12.adaptSize), Padding(padding: EdgeInsets.only(left: 4.h), child: Text("msg_jakarta_indonesia".tr, style: theme.textTheme.labelSmall))]), SizedBox(height: 18.v), CustomElevatedButton(height: 50.v, width: 94.h, text: "lbl_rent".tr, leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgClose, height: 18.v, width: 15.h)), buttonStyle: CustomButtonStyles.fillWhiteATL25, buttonTextStyle: theme.textTheme.labelMedium!, alignment: Alignment.centerRight)]))])); } 
/// Section Widget
Widget _buildPaymentDetail(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_payment_detail".tr, style: theme.textTheme.titleMedium), SizedBox(height: 14.v), Column(children: [Container(padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 19.v), decoration: AppDecoration.outlineBlueGray.copyWith(borderRadius: BorderRadiusStyle.customBorderTL25), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 4.v), _buildMonthlyPayment(context, monthlyPayment: "lbl_period_time".tr, price: "lbl_2_month".tr), SizedBox(height: 13.v), _buildMonthlyPayment(context, monthlyPayment: "lbl_monthly_payment".tr, price: "lbl_220".tr), SizedBox(height: 12.v), _buildMonthlyPayment(context, monthlyPayment: "lbl_discount".tr, price: "lbl_88".tr)])), _buildItemHeader(context)])]); } 
/// Section Widget
Widget _buildPaymentMethod(BuildContext context) { return Column(children: [_buildItemHeader(context), SizedBox(height: 14.v), Container(padding: EdgeInsets.all(14.h), decoration: AppDecoration.outlineBluegray50.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgTelevisionIndigo900, height: 20.adaptSize, width: 20.adaptSize), Padding(padding: EdgeInsets.only(left: 15.h, top: 3.v), child: Text("msg_an_email_com2".tr, style: theme.textTheme.bodySmall))]))]); } 
/// Section Widget
Widget _buildPayRent(BuildContext context) { return CustomElevatedButton(text: "lbl_pay_rent".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), onPressed: () {onTapPayRent(context);}); } 
/// Common widget
Widget _buildMonthlyPayment(BuildContext context, {required String monthlyPayment, required String price, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text(monthlyPayment, style: theme.textTheme.bodySmall!.copyWith(color: appTheme.blueGray600))), Text(price, style: CustomTextStyles.titleSmallBluegray600_1.copyWith(color: appTheme.blueGray600))]); } 
/// Common widget
Widget _buildItemHeader(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_payment_method".tr, style: theme.textTheme.titleMedium), Padding(padding: EdgeInsets.only(top: 2.v, bottom: 4.v), child: Text("lbl_change".tr, style: CustomTextStyles.labelLargePrimary))]); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 

/// Displays a bottom sheet widget using the [showModalBottomSheet] method 
/// of the [Scaffold] class with [isScrollControlled] set to true.
///
/// The bottom sheet is built using the [SummaryChangePaymentBottomsheet]
/// class and the [builder] method of the bottom sheet is passed the
/// [BuildContext] object.
onTapPayRent(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>SummaryChangePaymentBottomsheet.builder(context),isScrollControlled: true); } 
 }