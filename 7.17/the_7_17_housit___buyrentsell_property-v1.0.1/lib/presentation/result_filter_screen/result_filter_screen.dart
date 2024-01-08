import '../result_filter_screen/widgets/filter_item_widget.dart';import '../result_filter_screen/widgets/layout14_item_widget.dart';import 'package:flutter/material.dart';import 'package:the_7_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/appbar_subtitle.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/appbar_trailing_iconbutton_three.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/custom_search_view.dart';import 'package:the_7_17_housit___buyrentsell_property/presentation/filter_full_bottomsheet/filter_full_bottomsheet.dart';
// ignore_for_file: must_be_immutable
class ResultFilterScreen extends StatelessWidget {ResultFilterScreen({Key? key}) : super(key: key);

TextEditingController searchController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 10.v), child: Column(children: [SizedBox(height: 7.v), CustomSearchView(controller: searchController, hintText: "Modern House"), SizedBox(height: 20.v), _buildItemHeader(context), SizedBox(height: 20.v), _buildFilter(context), SizedBox(height: 20.v), _buildLayout(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "Search results"), actions: [AppbarTrailingIconbuttonThree(imagePath: ImageConstant.imgIconSettingWhiteA700, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 3.v), onTap: () {onTapIconSetting(context);})]); } 
/// Section Widget
Widget _buildItemHeader(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(top: 9.v, bottom: 8.v), child: Text("Found", style: CustomTextStyles.titleMediumMedium)), Padding(padding: EdgeInsets.only(left: 5.h, top: 10.v, bottom: 7.v), child: Text("0", style: CustomTextStyles.titleMediumRedA200)), Padding(padding: EdgeInsets.only(left: 5.h, top: 9.v, bottom: 8.v), child: Text("estates", style: CustomTextStyles.titleMediumMedium)), Spacer(), Container(width: 93.h, padding: EdgeInsets.symmetric(vertical: 8.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder20), child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [Container(height: 24.v, width: 36.h, padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.v), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: CustomImageView(imagePath: ImageConstant.imgGridOnprimarycontainer, height: 12.adaptSize, width: 12.adaptSize, alignment: Alignment.center)), Container(height: 24.v, width: 36.h, padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.v), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: CustomImageView(imagePath: ImageConstant.imgIconHorizontalBlueGray8000112x12, height: 12.adaptSize, width: 12.adaptSize, alignment: Alignment.center))]))]); } 
/// Section Widget
Widget _buildFilter(BuildContext context) { return Align(alignment: Alignment.centerLeft, child: Wrap(runSpacing: 10.v, spacing: 10.h, children: List<Widget>.generate(2, (index) => FilterItemWidget()))); } 
/// Section Widget
Widget _buildLayout(BuildContext context) { return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 10.v);}, itemCount: 3, itemBuilder: (context, index) {return Layout14ItemWidget();}); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 

/// Shows a modal bottom sheet with [FilterFullBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapIconSetting(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>FilterFullBottomsheet(),isScrollControlled: true); } 
 }
