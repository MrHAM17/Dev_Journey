import '../home_page/widgets/home_item_widget.dart';import '../home_page/widgets/layout27_item_widget.dart';import '../home_page/widgets/layout28_item_widget.dart';import '../home_page/widgets/layout29_item_widget.dart';import '../home_page/widgets/promotionbanner_item_widget.dart';import 'package:flutter/material.dart';import 'package:the_7_17_housit___buyrentsell_property/core/app_export.dart';class HomePage extends StatefulWidget {const HomePage({Key? key}) : super(key: key);

@override HomePageState createState() =>  HomePageState();

 }
class HomePageState extends State<HomePage> with  AutomaticKeepAliveClientMixin<HomePage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 18.v), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildPromotionBanner(context), SizedBox(height: 37.v), _buildItemHeader(context), SizedBox(height: 16.v), _buildLayout(context), SizedBox(height: 39.v), _buildItemHeader1(context), SizedBox(height: 14.v), _buildLayout1(context), SizedBox(height: 39.v), _buildItemHeader2(context), SizedBox(height: 14.v), _buildLayout2(context), SizedBox(height: 33.v), Text("Explore Nearby Estates", style: theme.textTheme.titleMedium), SizedBox(height: 14.v), _buildHome(context)])))]))))); } 
/// Section Widget
Widget _buildPromotionBanner(BuildContext context) { return SizedBox(height: 180.v, child: ListView.separated(scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 10.h);}, itemCount: 2, itemBuilder: (context, index) {return PromotionbannerItemWidget(onTapItemPromotion: () {onTapItemPromotion(context);});})); } 
/// Section Widget
Widget _buildItemHeader(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Featured Estates", style: theme.textTheme.titleMedium), Padding(padding: EdgeInsets.symmetric(vertical: 3.v), child: Text("view all", style: CustomTextStyles.labelLargePrimary))])); } 
/// Section Widget
Widget _buildLayout(BuildContext context) { return SizedBox(height: 156.v, child: ListView.separated(scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 10.h);}, itemCount: 2, itemBuilder: (context, index) {return Layout27ItemWidget();})); } 
/// Section Widget
Widget _buildItemHeader1(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 50.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Top Locations", style: theme.textTheme.titleMedium), Padding(padding: EdgeInsets.only(top: 2.v, bottom: 4.v), child: Text("explore", style: CustomTextStyles.labelLargePrimary))])); } 
/// Section Widget
Widget _buildLayout1(BuildContext context) { return SizedBox(height: 56.v, child: ListView.separated(scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 4.h);}, itemCount: 4, itemBuilder: (context, index) {return Layout28ItemWidget();})); } 
/// Section Widget
Widget _buildItemHeader2(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Top Estate Agent", style: theme.textTheme.titleMedium), Padding(padding: EdgeInsets.only(top: 2.v, bottom: 4.v), child: Text("explore", style: CustomTextStyles.labelLargePrimary))])); } 
/// Section Widget
Widget _buildLayout2(BuildContext context) { return SizedBox(height: 96.v, child: ListView.separated(scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 15.h);}, itemCount: 5, itemBuilder: (context, index) {return Layout29ItemWidget();})); } 
/// Section Widget
Widget _buildHome(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 24.h), child: GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 232.v, crossAxisCount: 2, mainAxisSpacing: 7.h, crossAxisSpacing: 7.h), physics: NeverScrollableScrollPhysics(), itemCount: 4, itemBuilder: (context, index) {return HomeItemWidget(onTapEstatesCardVertical: () {onTapEstatesCardVertical(context);});})); } 
/// Navigates to the promotionScreen when the action is triggered.
onTapItemPromotion(BuildContext context) { Navigator.pushNamed(context, AppRoutes.promotionScreen); } 
/// Navigates to the propertyDetailsScreen when the action is triggered.
onTapEstatesCardVertical(BuildContext context) { Navigator.pushNamed(context, AppRoutes.propertyDetailsScreen); } 
 }
