import 'package:flutter/material.dart';import 'package:the_7_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_7_17_housit___buyrentsell_property/presentation/all_reviews_page/all_reviews_page.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/appbar_subtitle.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';class AllReviewsTabContainerScreen extends StatefulWidget {const AllReviewsTabContainerScreen({Key? key}) : super(key: key);

@override AllReviewsTabContainerScreenState createState() =>  AllReviewsTabContainerScreenState();

 }

// ignore_for_file: must_be_immutable
class AllReviewsTabContainerScreenState extends State<AllReviewsTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 5, vsync: this); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 17.v), child: Column(children: [_buildItemOwner(context), SizedBox(height: 20.v), _buildTabview(context), SizedBox(height: 562.v, child: TabBarView(controller: tabviewController, children: [AllReviewsPage(), AllReviewsPage(), AllReviewsPage(), AllReviewsPage(), AllReviewsPage()]))]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "All reviews")); } 
/// Section Widget
Widget _buildItemOwner(BuildContext context) { return Container(margin: EdgeInsets.symmetric(horizontal: 24.h), padding: EdgeInsets.all(16.h), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgShape53x53, height: 53.adaptSize, width: 53.adaptSize, radius: BorderRadius.circular(26.h)), Padding(padding: EdgeInsets.only(left: 16.h, top: 4.v, bottom: 5.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Anderson", style: CustomTextStyles.titleMedium16), SizedBox(height: 7.v), Text("Owner", style: CustomTextStyles.titleSmallBluegray600)])), Spacer(), CustomImageView(imagePath: ImageConstant.imgSettingsBlueGray8000120x20, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(top: 17.v, right: 8.h, bottom: 16.v))])); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 51.v, width: 351.h, child: TabBar(controller: tabviewController, isScrollable: true, labelColor: appTheme.gray100, labelStyle: TextStyle(fontSize: 10.fSize, fontFamily: 'Raleway', fontWeight: FontWeight.w700), unselectedLabelColor: appTheme.blueGray80001, unselectedLabelStyle: TextStyle(fontSize: 10.fSize, fontFamily: 'Raleway', fontWeight: FontWeight.w500), indicatorPadding: EdgeInsets.all(0.5.h), indicator: BoxDecoration(color: appTheme.greenA400, borderRadius: BorderRadius.circular(25.h)), tabs: [Tab(child: Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 15.v), decoration: AppDecoration.fillGreenA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClose, height: 18.v, width: 15.h), Padding(padding: EdgeInsets.only(left: 9.h, top: 4.v), child: Text("All"))]))), Tab(child: Container(padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 16.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClose, height: 18.v, width: 15.h), Padding(padding: EdgeInsets.only(left: 8.h, top: 5.v), child: Text("1"))]))), Tab(child: Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClose, height: 18.v, width: 15.h), Padding(padding: EdgeInsets.only(left: 8.h, top: 5.v), child: Text("2"))]))), Tab(child: Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClose, height: 18.v, width: 15.h), Padding(padding: EdgeInsets.only(left: 8.h, top: 5.v), child: Text("3"))]))), Tab(child: Container(padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 16.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClose, height: 15.adaptSize, width: 15.adaptSize, margin: EdgeInsets.symmetric(vertical: 1.v)), Padding(padding: EdgeInsets.only(left: 8.h, top: 1.v), child: Text("4"))])))])); } 
/// Common widget
Widget _buildLayout(BuildContext context, {required String text, }) { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClose, height: 18.v, width: 15.h), Padding(padding: EdgeInsets.only(left: 8.h, top: 5.v), child: Text(text, style: theme.textTheme.labelMedium!.copyWith(color: appTheme.blueGray80001)))])); } 
/// Common widget
Widget _buildLayout1(BuildContext context, {required String text, }) { return Container(padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 16.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClose, height: 15.adaptSize, width: 15.adaptSize, margin: EdgeInsets.symmetric(vertical: 1.v)), Padding(padding: EdgeInsets.only(left: 8.h, top: 1.v), child: Text(text, style: theme.textTheme.labelMedium!.copyWith(color: appTheme.blueGray80001)))])); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
