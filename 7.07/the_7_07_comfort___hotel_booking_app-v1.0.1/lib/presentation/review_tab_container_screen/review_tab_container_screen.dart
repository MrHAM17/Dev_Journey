import 'package:flutter/material.dart';import 'package:the_7_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_7_07_comfort___hotel_booking_app/presentation/review_page/review_page.dart';import 'package:the_7_07_comfort___hotel_booking_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_7_07_comfort___hotel_booking_app/widgets/app_bar/appbar_title.dart';import 'package:the_7_07_comfort___hotel_booking_app/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:the_7_07_comfort___hotel_booking_app/widgets/app_bar/custom_app_bar.dart';class ReviewTabContainerScreen extends StatefulWidget {const ReviewTabContainerScreen({Key? key}) : super(key: key);

@override ReviewTabContainerScreenState createState() =>  ReviewTabContainerScreenState();

 }

// ignore_for_file: must_be_immutable
class ReviewTabContainerScreenState extends State<ReviewTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 6, vsync: this); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 27.v), _buildTabview(context), Expanded(child: SizedBox(height: 764.v, child: TabBarView(controller: tabviewController, children: [ReviewPage(), ReviewPage(), ReviewPage(), ReviewPage(), ReviewPage(), ReviewPage()])))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 53.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 14.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "Review", margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgSettingsWhiteA700, margin: EdgeInsets.fromLTRB(24.h, 11.v, 24.h, 14.v))]); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 38.v, width: 404.h, child: TabBar(controller: tabviewController, isScrollable: true, labelColor: appTheme.whiteA700, labelStyle: TextStyle(fontSize: 16.fSize, fontFamily: 'Urbanist', fontWeight: FontWeight.w700), unselectedLabelColor: theme.colorScheme.primary, unselectedLabelStyle: TextStyle(fontSize: 16.fSize, fontFamily: 'Urbanist', fontWeight: FontWeight.w600), indicator: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(19.h)), tabs: [Tab(child: Container(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 9.v), decoration: AppDecoration.fillPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgSignal, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.symmetric(vertical: 2.v)), Padding(padding: EdgeInsets.only(left: 7.h), child: Text("All"))]))), Tab(child: Container(padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 6.v), decoration: AppDecoration.outlinePrimary2.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgSignalPrimary, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.symmetric(vertical: 2.v)), Padding(padding: EdgeInsets.only(left: 8.h, top: 1.v), child: Text("5"))]))), Tab(child: Container(padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 6.v), decoration: AppDecoration.outlinePrimary2.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgSignalPrimary, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.symmetric(vertical: 2.v)), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("4"))]))), Tab(child: Container(padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 6.v), decoration: AppDecoration.outlinePrimary2.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgSignalPrimary, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.symmetric(vertical: 2.v)), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("3"))]))), Tab(child: Container(padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 6.v), decoration: AppDecoration.outlinePrimary2.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgSignalPrimary, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.symmetric(vertical: 2.v)), Padding(padding: EdgeInsets.only(left: 7.h), child: Text("2"))]))), Tab(child: Container(padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 6.v), decoration: AppDecoration.outlinePrimary2.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgSignalPrimary, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.symmetric(vertical: 3.v)), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("1"))])))])); } 
/// Common widget
Widget _buildReviewItem(BuildContext context, {required String four, }) { return Container(padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 6.v), decoration: AppDecoration.outlinePrimary2.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgSignalPrimary, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.symmetric(vertical: 2.v)), Padding(padding: EdgeInsets.only(left: 8.h), child: Text(four, style: CustomTextStyles.titleMediumPrimary.copyWith(color: theme.colorScheme.primary)))])); } 
/// Common widget
Widget _buildReviewItem1(BuildContext context, {required String two, }) { return Container(padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 6.v), decoration: AppDecoration.outlinePrimary2.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgSignalPrimary, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.symmetric(vertical: 2.v)), Padding(padding: EdgeInsets.only(left: 7.h), child: Text(two, style: CustomTextStyles.titleMediumPrimary.copyWith(color: theme.colorScheme.primary)))])); } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { Navigator.pop(context); } 
 }
