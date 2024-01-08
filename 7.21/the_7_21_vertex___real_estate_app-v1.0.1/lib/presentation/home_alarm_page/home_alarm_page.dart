import '../home_alarm_page/widgets/homealarm_item_widget.dart';import 'package:flutter/material.dart';import 'package:the_7_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/app_bar/appbar_subtitle_five.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/app_bar/appbar_subtitle_three.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/app_bar/appbar_title_image.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/custom_search_view.dart';
// ignore_for_file: must_be_immutable
class HomeAlarmPage extends StatelessWidget {HomeAlarmPage({Key? key}) : super(key: key);

TextEditingController searchController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(children: [CustomSearchView(controller: searchController, hintText: "Search..."), SizedBox(height: 24.v), _buildHomeAlarm(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 60.v, title: Padding(padding: EdgeInsets.only(left: 24.h), child: Column(children: [AppbarSubtitleFive(text: "Location", margin: EdgeInsets.only(right: 129.h)), SizedBox(height: 6.v), Row(children: [AppbarTitleImage(imagePath: ImageConstant.imgIconMapPin, margin: EdgeInsets.only(bottom: 3.v)), AppbarSubtitleThree(text: "St. Celina, Delaware", margin: EdgeInsets.only(left: 8.h)), AppbarTitleImage(imagePath: ImageConstant.imgArrowDownBlueGray500, margin: EdgeInsets.only(left: 4.h, top: 2.v, bottom: 5.v))])])), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgGrid, margin: EdgeInsets.only(left: 24.h, top: 10.v, right: 10.h)), AppbarTrailingIconbutton(imagePath: ImageConstant.imgNotificationLight, margin: EdgeInsets.only(left: 12.h, top: 10.v, right: 34.h), onTap: () {onTapNotificationLight(context);})], styleType: Style.bgFill); } 
/// Section Widget
Widget _buildHomeAlarm(BuildContext context) { return Expanded(child: ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: 3, itemBuilder: (context, index) {return HomealarmItemWidget();})); } 
/// Navigates to the notificationScreen when the action is triggered.
onTapNotificationLight(BuildContext context) { Navigator.pushNamed(context, AppRoutes.notificationScreen); } 
 }
