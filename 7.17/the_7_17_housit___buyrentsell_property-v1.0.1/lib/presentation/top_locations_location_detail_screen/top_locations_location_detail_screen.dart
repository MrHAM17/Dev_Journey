import '../top_locations_location_detail_screen/widgets/frameeightyone_item_widget.dart';import '../top_locations_location_detail_screen/widgets/toplocationslocationdetail_item_widget.dart';import 'package:flutter/material.dart';import 'package:the_7_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/custom_icon_button.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/custom_search_view.dart';
// ignore_for_file: must_be_immutable
class TopLocationsLocationDetailScreen extends StatelessWidget {TopLocationsLocationDetailScreen({Key? key}) : super(key: key);

TextEditingController searchController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 10.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(left: 10.h, right: 10.h, bottom: 22.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildBackground(context), SizedBox(height: 27.v), Padding(padding: EdgeInsets.only(left: 14.h), child: Text("Bali", style: theme.textTheme.headlineSmall)), SizedBox(height: 9.v), Padding(padding: EdgeInsets.only(left: 14.h), child: Text("Our recommended real estates in Jakarta", style: theme.textTheme.bodyMedium)), SizedBox(height: 36.v), Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 14.h), child: CustomSearchView(controller: searchController, hintText: "Modern House", alignment: Alignment.center))), SizedBox(height: 20.v), _buildItemHeader(context), SizedBox(height: 20.v), _buildFrameEightyOne(context), SizedBox(height: 20.v), _buildTopLocationsLocationDetail(context)]))))])))); } 
/// Section Widget
Widget _buildBackground(BuildContext context) { return SizedBox(height: 320.v, width: 355.h, child: Stack(alignment: Alignment.bottomRight, children: [Align(alignment: Alignment.centerLeft, child: SizedBox(height: 320.v, width: 235.h, child: Stack(alignment: Alignment.bottomLeft, children: [CustomImageView(imagePath: ImageConstant.imgShape320x235, height: 320.v, width: 235.h, alignment: Alignment.center), Padding(padding: EdgeInsets.only(left: 14.h, bottom: 24.v), child: CustomIconButton(height: 53.adaptSize, width: 53.adaptSize, padding: EdgeInsets.all(14.h), decoration: IconButtonStyleHelper.fillOrange, alignment: Alignment.bottomLeft, child: CustomImageView(imagePath: ImageConstant.imgSignal)))]))), CustomImageView(imagePath: ImageConstant.imgShape10, height: 100.v, width: 110.h, alignment: Alignment.bottomRight), CustomImageView(imagePath: ImageConstant.imgShape11, height: 210.v, width: 110.h, alignment: Alignment.topRight), Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.fromLTRB(14.h, 14.v, 14.h, 256.v), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomIconButton(height: 50.adaptSize, width: 50.adaptSize, padding: EdgeInsets.all(16.h), decoration: IconButtonStyleHelper.fillWhiteA, onTap: () {onTapBtnArrowLeft(context);}, child: CustomImageView(imagePath: ImageConstant.imgArrowLeft)), CustomIconButton(height: 50.adaptSize, width: 50.adaptSize, padding: EdgeInsets.all(15.h), decoration: IconButtonStyleHelper.fillPrimary, child: CustomImageView(imagePath: ImageConstant.imgIconSettingWhiteA700))])))])); } 
/// Section Widget
Widget _buildItemHeader(BuildContext context) { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 14.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(top: 9.v, bottom: 8.v), child: Text("Found", style: CustomTextStyles.titleMediumMedium)), Padding(padding: EdgeInsets.only(left: 5.h, top: 10.v, bottom: 7.v), child: Text("0", style: CustomTextStyles.titleMediumRedA200)), Padding(padding: EdgeInsets.only(left: 5.h, top: 9.v, bottom: 8.v), child: Text("estates", style: CustomTextStyles.titleMediumMedium)), Spacer(), Container(width: 93.h, padding: EdgeInsets.symmetric(vertical: 8.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder20), child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [Container(height: 24.v, width: 36.h, padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.v), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: CustomImageView(imagePath: ImageConstant.imgGridOnprimarycontainer, height: 12.adaptSize, width: 12.adaptSize, alignment: Alignment.center)), Container(height: 24.v, width: 36.h, padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.v), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: CustomImageView(imagePath: ImageConstant.imgIconHorizontalBlueGray80001, height: 12.adaptSize, width: 12.adaptSize, alignment: Alignment.center))]))]))); } 
/// Section Widget
Widget _buildFrameEightyOne(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 14.h), child: Wrap(runSpacing: 10.v, spacing: 10.h, children: List<Widget>.generate(2, (index) => FrameeightyoneItemWidget()))); } 
/// Section Widget
Widget _buildTopLocationsLocationDetail(BuildContext context) { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 14.h), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 11.v);}, itemCount: 2, itemBuilder: (context, index) {return ToplocationslocationdetailItemWidget();}))); } 

/// Navigates back to the previous screen.
onTapBtnArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
