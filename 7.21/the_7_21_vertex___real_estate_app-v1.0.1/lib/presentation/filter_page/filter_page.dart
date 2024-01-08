import '../filter_page/widgets/home_item_widget.dart';import '../filter_page/widgets/options2_item_widget.dart';import 'package:flutter/material.dart';import 'package:the_7_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/custom_drop_down.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/custom_elevated_button.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/custom_icon_button.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/custom_outlined_button.dart';class FilterPage extends StatefulWidget {const FilterPage({Key? key}) : super(key: key);

@override FilterPageState createState() =>  FilterPageState();

 }

// ignore_for_file: must_be_immutable
class FilterPageState extends State<FilterPage> with  AutomaticKeepAliveClientMixin<FilterPage> {List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

List<String> dropdownItemList2 = ["Item One", "Item Two", "Item Three"];

List<String> dropdownItemList3 = ["Item One", "Item Two", "Item Three"];

@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 27.v), Column(children: [_buildPriceRange(context), SizedBox(height: 26.v), _buildFeatures(context), SizedBox(height: 27.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Text("Property Facts", style: CustomTextStyles.titleMedium16))), SizedBox(height: 17.v), _buildSquareFeet1(context), SizedBox(height: 17.v), _buildSquareFeet2(context), SizedBox(height: 27.v), _buildPropertyType(context), SizedBox(height: 26.v), _buildAmenities(context), SizedBox(height: 17.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Row(children: [Text("See More", style: CustomTextStyles.titleSmallPrimaryBold), CustomImageView(imagePath: ImageConstant.imgArrowLeft, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 8.h, bottom: 2.v))]))), SizedBox(height: 24.v), _buildBTN(context)])]))))); } 
/// Section Widget
Widget _buildPriceRange(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("Price Range", style: CustomTextStyles.titleMedium16), Text("200 - 15,000", style: CustomTextStyles.titleSmallPrimary_2)]), SizedBox(height: 22.v), SizedBox(height: 24.v, width: 327.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(bottom: 7.v), child: SizedBox(width: 327.h, child: Divider(color: appTheme.gray300)))), Align(alignment: Alignment.center, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildButton(context), Padding(padding: EdgeInsets.only(top: 14.v, bottom: 7.v), child: SizedBox(width: 103.h, child: Divider(color: theme.colorScheme.primary))), _buildButton(context)]))]))])); } 
/// Section Widget
Widget _buildFeatures(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Features", style: CustomTextStyles.titleMedium16), SizedBox(height: 20.v), Column(children: [_buildBaths(context, baths: "Beds", two: "4"), SizedBox(height: 16.v), _buildBaths(context, baths: "Baths", two: "2")])])); } 
/// Section Widget
Widget _buildSquareFeet(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Square Feet", style: theme.textTheme.titleSmall), SizedBox(height: 6.v), CustomDropDown(width: 139.h, icon: Container(margin: EdgeInsets.fromLTRB(30.h, 14.v, 12.h, 15.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdownBlueGray5001, height: 16.adaptSize, width: 16.adaptSize)), hintText: "Min", items: dropdownItemList, onChanged: (value) {})]); } 
/// Section Widget
Widget _buildSquareFeet1(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.end, children: [_buildSquareFeet(context), CustomImageView(imagePath: ImageConstant.imgArrowDown, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 16.h, top: 41.v, bottom: 13.v)), Padding(padding: EdgeInsets.only(left: 17.h, top: 26.v), child: CustomDropDown(width: 139.h, icon: Container(margin: EdgeInsets.fromLTRB(30.h, 14.v, 12.h, 15.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdownBlueGray5001, height: 16.adaptSize, width: 16.adaptSize)), hintText: "Max", items: dropdownItemList1, onChanged: (value) {}))])); } 
/// Section Widget
Widget _buildSquareFeet2(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Lot Size", style: theme.textTheme.titleSmall), SizedBox(height: 8.v), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomDropDown(width: 139.h, icon: Container(margin: EdgeInsets.fromLTRB(30.h, 14.v, 12.h, 15.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdownBlueGray5001, height: 16.adaptSize, width: 16.adaptSize)), hintText: "Min", items: dropdownItemList2, onChanged: (value) {}), CustomImageView(imagePath: ImageConstant.imgArrowDown, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 15.v, bottom: 14.v)), CustomDropDown(width: 139.h, icon: Container(margin: EdgeInsets.fromLTRB(30.h, 14.v, 12.h, 15.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdownBlueGray5001, height: 16.adaptSize, width: 16.adaptSize)), hintText: "Max", items: dropdownItemList3, onChanged: (value) {})])])); } 
/// Section Widget
Widget _buildPropertyType(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Property Type", style: CustomTextStyles.titleMedium16), SizedBox(height: 14.v), Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(5, (index) => HomeItemWidget()))])); } 
/// Section Widget
Widget _buildAmenities(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Row(children: [Text("Amenities", style: CustomTextStyles.titleMedium16), CustomImageView(imagePath: ImageConstant.imgVideoCamera, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 26.h))]), SizedBox(height: 16.v), Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(8, (index) => Options2ItemWidget()))])); } 
/// Section Widget
Widget _buildBTN(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), decoration: AppDecoration.outlineBlueGrayF, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomOutlinedButton(text: "Reset", margin: EdgeInsets.only(right: 7.h), buttonStyle: CustomButtonStyles.outlinePrimaryTL10, buttonTextStyle: CustomTextStyles.titleMediumPrimaryBold)), Expanded(child: CustomElevatedButton(text: "Apply", margin: EdgeInsets.only(left: 7.h)))])); } 
/// Common widget
Widget _buildButton(BuildContext context) { return Container(width: 24.h, padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 7.v), decoration: AppDecoration.fillPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgChevronLeft, height: 10.adaptSize, width: 10.adaptSize), CustomImageView(imagePath: ImageConstant.imgChevronRight, height: 10.adaptSize, width: 10.adaptSize)])); } 
/// Common widget
Widget _buildBaths(BuildContext context, {required String baths, required String two, }) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text(baths, style: CustomTextStyles.titleMediumMedium.copyWith(color: theme.colorScheme.primaryContainer)), Spacer(), CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, child: CustomImageView(imagePath: ImageConstant.imgArrowLeftGray300)), Padding(padding: EdgeInsets.only(left: 15.h), child: Text(two, style: CustomTextStyles.titleMedium16.copyWith(color: theme.colorScheme.primaryContainer))), Padding(padding: EdgeInsets.only(left: 15.h), child: CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, child: CustomImageView(imagePath: ImageConstant.imgFloatingIcon)))]); } 
 }
