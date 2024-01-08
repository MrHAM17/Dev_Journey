import '../top_locations_screen/widgets/data_item_widget.dart';import 'models/data_item_model.dart';import 'models/top_locations_model.dart';import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';import 'provider/top_locations_provider.dart';class TopLocationsScreen extends StatefulWidget {const TopLocationsScreen({Key? key}) : super(key: key);

@override TopLocationsScreenState createState() =>  TopLocationsScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => TopLocationsProvider(), child: TopLocationsScreen()); } 
 }
class TopLocationsScreenState extends State<TopLocationsScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 20.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 16.v), Text("lbl_top_locations".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 8.v), Text("msg_find_the_best_recommendations".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 35.v), _buildData(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.fromLTRB(24.h, 3.v, 301.h, 3.v), onTap: () {onTapArrowLeft(context);})); } 
/// Section Widget
Widget _buildData(BuildContext context) { return Expanded(child: Consumer<TopLocationsProvider>(builder: (context, provider, child) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 227.v, crossAxisCount: 2, mainAxisSpacing: 7.h, crossAxisSpacing: 7.h), physics: BouncingScrollPhysics(), itemCount: provider.topLocationsModelObj.dataItemList.length, itemBuilder: (context, index) {DataItemModel model = provider.topLocationsModelObj.dataItemList[index]; return DataItemWidget(model, onTapEstatesCardLocation: () {onTapEstatesCardLocation(context);});});})); } 
/// Navigates to the topLocationsLocationDetailScreen when the action is triggered.
onTapEstatesCardLocation(BuildContext context) { NavigatorService.pushNamed(AppRoutes.topLocationsLocationDetailScreen); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
