import '../messages_screen/widgets/autolayouthorizontal7_item_widget.dart';import '../messages_screen/widgets/theresavarnes_item_widget.dart';import 'package:flutter/material.dart';import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_7_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';import 'package:the_7_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title.dart';import 'package:the_7_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:the_7_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';import 'package:the_7_16_tikpik___short_video__social_networking/widgets/custom_search_view.dart';
// ignore_for_file: must_be_immutable
class MessagesScreen extends StatelessWidget {MessagesScreen({Key? key}) : super(key: key);

TextEditingController searchController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 19.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: CustomSearchView(controller: searchController, hintText: "Search", alignment: Alignment.center))), SizedBox(height: 26.v), Padding(padding: EdgeInsets.only(left: 24.h), child: Text("Recently", style: theme.textTheme.titleLarge)), SizedBox(height: 22.v), _buildAutoLayoutHorizontal(context), SizedBox(height: 26.v), Padding(padding: EdgeInsets.only(left: 24.h), child: Text("Messages", style: theme.textTheme.titleLarge)), SizedBox(height: 21.v), _buildTheresaVarnes(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 14.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "Messages", margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgIconlyCurvedPlusGray900, margin: EdgeInsets.only(left: 24.h, top: 10.v, right: 14.h)), AppbarTrailingIconbutton(imagePath: ImageConstant.imgSettingsGray900, margin: EdgeInsets.only(left: 20.h, top: 10.v, right: 38.h))]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal(BuildContext context) { return Align(alignment: Alignment.centerRight, child: SizedBox(height: 104.v, child: ListView.separated(padding: EdgeInsets.only(left: 24.h), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 16.h);}, itemCount: 5, itemBuilder: (context, index) {return Autolayouthorizontal7ItemWidget();}))); } 
/// Section Widget
Widget _buildTheresaVarnes(BuildContext context) { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: 6, itemBuilder: (context, index) {return TheresavarnesItemWidget(onTapTypeMessengerList: () {onTapTypeMessengerList(context);});}))); } 
/// Navigates to the messagesBoxScreen when the action is triggered.
onTapTypeMessengerList(BuildContext context) { Navigator.pushNamed(context, AppRoutes.messagesBoxScreen); } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { Navigator.pop(context); } 
 }
