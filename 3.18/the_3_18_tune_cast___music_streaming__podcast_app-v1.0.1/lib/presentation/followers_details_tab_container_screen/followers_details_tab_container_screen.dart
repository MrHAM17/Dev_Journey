import 'bloc/followers_details_tab_container_bloc.dart';import 'models/followers_details_tab_container_model.dart';import 'package:flutter/material.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/presentation/followers_details_page/followers_details_page.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_trailing_iconbutton_one.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_trailing_image.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';class FollowersDetailsTabContainerScreen extends StatefulWidget {const FollowersDetailsTabContainerScreen({Key? key}) : super(key: key);

@override FollowersDetailsTabContainerScreenState createState() =>  FollowersDetailsTabContainerScreenState();

static Widget builder(BuildContext context) { return BlocProvider<FollowersDetailsTabContainerBloc>(create: (context) => FollowersDetailsTabContainerBloc(FollowersDetailsTabContainerState(followersDetailsTabContainerModelObj: FollowersDetailsTabContainerModel()))..add(FollowersDetailsTabContainerInitialEvent()), child: FollowersDetailsTabContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class FollowersDetailsTabContainerScreenState extends State<FollowersDetailsTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 2, vsync: this); } 
@override Widget build(BuildContext context) { return BlocBuilder<FollowersDetailsTabContainerBloc, FollowersDetailsTabContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 25.v), _buildTabview(context), SizedBox(height: 767.v, child: TabBarView(controller: tabviewController, children: [FollowersDetailsPage(), FollowersDetailsPage()]))]))));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 11.v), onTap: () {onTapArrowDown(context);}), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgRewind, margin: EdgeInsets.only(left: 24.h, top: 11.v, right: 11.h)), AppbarTrailingIconbuttonOne(imagePath: ImageConstant.imgSettingsGray90001, margin: EdgeInsets.only(left: 20.h, top: 11.v, right: 35.h))]); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 39.v, width: double.maxFinite, child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: theme.colorScheme.onPrimaryContainer, labelStyle: TextStyle(fontSize: 18.fSize, fontFamily: 'Urbanist', fontWeight: FontWeight.w600), unselectedLabelColor: appTheme.gray500, unselectedLabelStyle: TextStyle(fontSize: 18.fSize, fontFamily: 'Urbanist', fontWeight: FontWeight.w600), indicatorColor: theme.colorScheme.onPrimaryContainer, tabs: [Tab(child: Text("lbl_followers".tr)), Tab(child: Text("lbl_following".tr))])); } 

/// Navigates to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
 }