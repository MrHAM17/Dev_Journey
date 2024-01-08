import '../top_locations_screen/widgets/data_item_widget.dart';import 'package:flutter/material.dart';import 'package:the_7_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';class TopLocationsScreen extends StatelessWidget {const TopLocationsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 20.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 16.v), Text("Top Locations", style: theme.textTheme.headlineSmall), SizedBox(height: 8.v), Text("Find the best recommendations place to live", style: theme.textTheme.bodyMedium), SizedBox(height: 35.v), _buildData(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.fromLTRB(24.h, 3.v, 301.h, 3.v), onTap: () {onTapArrowLeft(context);})); } 
/// Section Widget
Widget _buildData(BuildContext context) { return Expanded(child: GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 227.v, crossAxisCount: 2, mainAxisSpacing: 7.h, crossAxisSpacing: 7.h), physics: BouncingScrollPhysics(), itemCount: 6, itemBuilder: (context, index) {return DataItemWidget(onTapEstatesCardLocation: () {onTapEstatesCardLocation(context);});})); } 
/// Navigates to the topLocationsLocationDetailScreen when the action is triggered.
onTapEstatesCardLocation(BuildContext context) { Navigator.pushNamed(context, AppRoutes.topLocationsLocationDetailScreen); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
