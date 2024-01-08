import 'models/top_agents_profile_detail_tab_container_model.dart';import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/top_agents_profile_detail_page/top_agents_profile_detail_page.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/appbar_subtitle.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';import 'provider/top_agents_profile_detail_tab_container_provider.dart';class TopAgentsProfileDetailTabContainerScreen extends StatefulWidget {const TopAgentsProfileDetailTabContainerScreen({Key? key}) : super(key: key);

@override TopAgentsProfileDetailTabContainerScreenState createState() =>  TopAgentsProfileDetailTabContainerScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => TopAgentsProfileDetailTabContainerProvider(), child: TopAgentsProfileDetailTabContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class TopAgentsProfileDetailTabContainerScreenState extends State<TopAgentsProfileDetailTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 3, vsync: this); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 15.v), child: Column(children: [SizedBox(height: 101.v, width: 100.h, child: Stack(alignment: Alignment.topLeft, children: [CustomImageView(imagePath: ImageConstant.imgShape19, height: 100.adaptSize, width: 100.adaptSize, radius: BorderRadius.circular(50.h), alignment: Alignment.center), CustomElevatedButton(height: 28.v, width: 22.h, text: "lbl_1".tr, margin: EdgeInsets.only(left: 2.h), buttonStyle: CustomButtonStyles.fillOrange, buttonTextStyle: CustomTextStyles.labelLargeWhiteA700, alignment: Alignment.topLeft)])), SizedBox(height: 11.v), Text("lbl_amanda".tr, style: CustomTextStyles.titleSmallBold), SizedBox(height: 8.v), Text("msg_amanda_email_com".tr, style: CustomTextStyles.labelLargeBluegray600), SizedBox(height: 10.v), _buildTabview(context), SizedBox(height: 636.v, child: TabBarView(controller: tabviewController, children: [TopAgentsProfileDetailPage(), TopAgentsProfileDetailPage(), TopAgentsProfileDetailPage()]))]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "lbl_profile".tr), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgTwitter, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 3.v))]); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 70.v, width: 326.h, child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, tabs: [Tab(child: Text("lbl_5_0".tr)), Tab(child: Column(children: [Text("lbl_2352".tr), Padding(padding: EdgeInsets.only(top: 4.v), child: Text("lbl_reviews".tr))])), Tab(child: Column(children: [Text("lbl_112".tr), Padding(padding: EdgeInsets.only(top: 5.v), child: Text("lbl_sold".tr))]))])); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
