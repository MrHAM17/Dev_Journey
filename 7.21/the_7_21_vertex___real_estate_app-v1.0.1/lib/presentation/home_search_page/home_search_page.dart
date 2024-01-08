import '../home_search_page/widgets/homesearch_item_widget.dart';import 'package:flutter/material.dart';import 'package:the_7_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/app_bar/appbar_title_searchview.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/app_bar/appbar_trailing_iconbutton_one.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/app_bar/custom_app_bar.dart';
// ignore_for_file: must_be_immutable
class HomeSearchPage extends StatelessWidget {HomeSearchPage({Key? key}) : super(key: key);

TextEditingController searchController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 12.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Row(children: [CustomImageView(imagePath: ImageConstant.imgBrightness, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(bottom: 2.v)), Padding(padding: EdgeInsets.only(left: 12.h, top: 2.v), child: Text("Or use my current location", style: theme.textTheme.titleSmall))]), SizedBox(height: 31.v), Text("Search Results", style: CustomTextStyles.titleSmallBluegray500_1), SizedBox(height: 18.v), _buildHomeSearch(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(title: AppbarTitleSearchview(margin: EdgeInsets.only(left: 24.h), hintText: "360 Stillwater Rd...", controller: searchController), actions: [AppbarTrailingIconbuttonOne(imagePath: ImageConstant.imgFile, margin: EdgeInsets.fromLTRB(8.h, 4.v, 24.h, 4.v), onTap: () {onTapFile(context);})]); } 
/// Section Widget
Widget _buildHomeSearch(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(right: 78.h), child: ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 17.v);}, itemCount: 3, itemBuilder: (context, index) {return HomesearchItemWidget(onTapSearch: () {onTapSearch(context);});}))); } 
/// Navigates to the productDetailsScreen when the action is triggered.
onTapSearch(BuildContext context) { Navigator.pushNamed(context, AppRoutes.productDetailsScreen); } 
/// Navigates to the filterTabContainerScreen when the action is triggered.
onTapFile(BuildContext context) { Navigator.pushNamed(context, AppRoutes.filterTabContainerScreen); } 
 }
