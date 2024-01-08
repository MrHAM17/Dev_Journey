import '../review_fill_screen/widgets/layout_item_widget.dart';import 'package:flutter/material.dart';import 'package:the_7_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/appbar_subtitle.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/custom_icon_button.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class ReviewFillScreen extends StatelessWidget {ReviewFillScreen({Key? key}) : super(key: key);

TextEditingController formDateFillController = TextEditingController();

TextEditingController formDateFillController1 = TextEditingController();

TextEditingController televisionController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 21.v), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 17.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(left: 24.h, bottom: 5.v), child: Column(children: [_buildEstatesCardTransaction(context), SizedBox(height: 37.v), _buildPeriod(context), SizedBox(height: 37.v), _buildNote(context), SizedBox(height: 39.v), Align(alignment: Alignment.centerLeft, child: Text("Payment Method", style: theme.textTheme.titleMedium)), SizedBox(height: 14.v), _buildLayout(context), SizedBox(height: 36.v), _buildVoucher(context), SizedBox(height: 50.v), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 1.v, width: 100.h, alignment: Alignment.centerLeft, margin: EdgeInsets.only(left: 114.h))]))))])), bottomNavigationBar: _buildNext(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "Transaction review")); } 
/// Section Widget
Widget _buildEstatesCardTransaction(BuildContext context) { return Align(alignment: Alignment.centerLeft, child: Container(margin: EdgeInsets.only(right: 24.h), padding: EdgeInsets.all(8.h), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 140.v, width: 168.h, child: Stack(alignment: Alignment.centerLeft, children: [CustomImageView(imagePath: ImageConstant.imgShape20, height: 140.v, width: 168.h, radius: BorderRadius.circular(18.h), alignment: Alignment.center), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 8.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomIconButton(height: 25.adaptSize, width: 25.adaptSize, padding: EdgeInsets.all(6.h), decoration: IconButtonStyleHelper.fillWhiteATL121, child: CustomImageView(imagePath: ImageConstant.imgFavoriteRedA200)), SizedBox(height: 75.v), CustomElevatedButton(height: 24.v, width: 72.h, text: "Apartment", leftIcon: Container(margin: EdgeInsets.only(right: 6.h), child: CustomImageView(imagePath: ImageConstant.imgClose, height: 13.v, width: 11.h)), buttonStyle: CustomButtonStyles.fillBlueGrayAfTL8, buttonTextStyle: CustomTextStyles.labelSmallGray100)])))])), Padding(padding: EdgeInsets.fromLTRB(16.h, 8.v, 9.h, 8.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(width: 88.h, child: Text("Sky Dandelions\nApartment", maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.labelLarge!.copyWith(height: 1.50))), SizedBox(height: 6.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgLinkedin, height: 12.adaptSize, width: 12.adaptSize), Padding(padding: EdgeInsets.only(left: 4.h), child: Text("Jakarta, Indonesia", style: theme.textTheme.labelSmall))]), SizedBox(height: 18.v), CustomElevatedButton(height: 50.v, width: 94.h, text: "Rent", leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgClose, height: 18.v, width: 15.h)), buttonStyle: CustomButtonStyles.fillWhiteATL25, buttonTextStyle: theme.textTheme.labelMedium!, alignment: Alignment.centerRight)]))]))); } 
/// Section Widget
Widget _buildPeriod(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Period", style: theme.textTheme.titleMedium), SizedBox(height: 16.v), Padding(padding: EdgeInsets.only(right: 22.h), child: Row(children: [CustomTextFormField(width: 163.h, controller: formDateFillController, hintText: "11/28/2021", hintStyle: CustomTextStyles.labelLargeSemiBold, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), child: CustomImageView(imagePath: ImageConstant.imgCalendar, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v)), Padding(padding: EdgeInsets.only(left: 6.h), child: CustomTextFormField(width: 160.h, controller: formDateFillController1, hintText: "01/28/2022", hintStyle: CustomTextStyles.labelLargeSemiBold, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), child: CustomImageView(imagePath: ImageConstant.imgCalendar, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v)))]))]); } 
/// Section Widget
Widget _buildNote(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Note for Owner", style: theme.textTheme.titleMedium), SizedBox(height: 16.v), Padding(padding: EdgeInsets.only(right: 24.h), child: CustomTextFormField(controller: televisionController, hintText: "Please, clean before I go there", textInputAction: TextInputAction.done, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), child: CustomImageView(imagePath: ImageConstant.imgTelevision, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v)))]); } 
/// Section Widget
Widget _buildLayout(BuildContext context) { return SizedBox(height: 180.v, child: ListView.separated(scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 10.h);}, itemCount: 3, itemBuilder: (context, index) {return LayoutItemWidget();})); } 
/// Section Widget
Widget _buildVoucher(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(right: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("Have a voucher?", style: theme.textTheme.titleMedium), Padding(padding: EdgeInsets.only(top: 4.v, bottom: 2.v), child: Text("change voucher", style: CustomTextStyles.labelLargePrimary))])), SizedBox(height: 16.v), Container(margin: EdgeInsets.only(right: 24.h), padding: EdgeInsets.all(16.h), decoration: AppDecoration.gradientGreenAToTealA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisSize: MainAxisSize.max, children: [CustomElevatedButton(height: 52.v, width: 128.h, text: "HLWN40", margin: EdgeInsets.only(bottom: 1.v), buttonStyle: CustomButtonStyles.fillGreenATL17, buttonTextStyle: CustomTextStyles.titleMediumMontserratWhiteA700Bold), Padding(padding: EdgeInsets.only(left: 10.h, top: 10.v, bottom: 10.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Halloween sale", style: theme.textTheme.labelLarge), SizedBox(height: 7.v), Text("Get 40% off on all transactions", style: theme.textTheme.labelSmall)]))]))]); } 
/// Section Widget
Widget _buildNext(BuildContext context) { return CustomElevatedButton(text: "Next", margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), onPressed: () {onTapNext(context);}); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the summaryScreen when the action is triggered.
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.summaryScreen); } 
 }
