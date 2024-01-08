import 'bloc/profile_tab_container_bloc.dart';import 'models/profile_tab_container_model.dart';import 'package:flutter/material.dart';import 'package:the_3_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/profile_page/profile_page.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_trailing_image.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/custom_icon_button.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/custom_outlined_button.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/total_likes_dialog/total_likes_dialog.dart';class ProfileTabContainerScreen extends StatefulWidget {const ProfileTabContainerScreen({Key? key}) : super(key: key);

@override ProfileTabContainerScreenState createState() =>  ProfileTabContainerScreenState();

static Widget builder(BuildContext context) { return BlocProvider<ProfileTabContainerBloc>(create: (context) => ProfileTabContainerBloc(ProfileTabContainerState(profileTabContainerModelObj: ProfileTabContainerModel()))..add(ProfileTabContainerInitialEvent()), child: ProfileTabContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class ProfileTabContainerScreenState extends State<ProfileTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 3, vsync: this); } 
@override Widget build(BuildContext context) { return BlocBuilder<ProfileTabContainerBloc, ProfileTabContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 13.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgEllipse120x120, height: 120.adaptSize, width: 120.adaptSize, radius: BorderRadius.circular(60.h)), SizedBox(height: 14.v), Text("lbl_jenny_wilson2".tr, style: theme.textTheme.titleLarge), SizedBox(height: 9.v), Text("msg_actress_singer".tr, style: CustomTextStyles.titleSmallGray900), SizedBox(height: 17.v), _buildFrameNineteen(context), SizedBox(height: 18.v), _buildAutoLayoutHorizontal(context), SizedBox(height: 34.v), Container(height: 40.v, width: 341.h, margin: EdgeInsets.only(left: 24.h), child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, indicatorColor: theme.colorScheme.primary, tabs: [Tab(child: CustomImageView(imagePath: ImageConstant.imgGrid, height: 24.adaptSize, width: 24.adaptSize)), Tab(child: CustomImageView(imagePath: ImageConstant.imgBookmarkGray500, height: 24.adaptSize, width: 24.adaptSize)), Tab(child: CustomImageView(imagePath: ImageConstant.imgFavoriteGray500, height: 24.adaptSize, width: 24.adaptSize))])), _buildTabBarView(context)])))));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 51.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 13.v)), title: AppbarTitle(text: "lbl_jenny_wilson".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgIconlyCurvedNotification, margin: EdgeInsets.only(left: 24.h, top: 10.v, right: 13.h)), AppbarTrailingIconbutton(imagePath: ImageConstant.imgSettingsGray900, margin: EdgeInsets.only(left: 20.h, top: 10.v, right: 37.h))]); } 
/// Section Widget
Widget _buildFrameNineteen(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildAutoLayoutVertical(context, distance: "lbl_679".tr, followers: "lbl_posts".tr), Padding(padding: EdgeInsets.only(left: 16.h), child: _buildAutoLayoutVertical(context, distance: "lbl_2_6m".tr, followers: "lbl_followers".tr, onTapAutoLayoutVertical: () {onTapAutoLayoutVertical(context);})), Padding(padding: EdgeInsets.only(left: 16.h), child: _buildAutoLayoutVertical(context, distance: "lbl_648".tr, followers: "lbl_following".tr)), GestureDetector(onTap: () {onTapAutoLayoutVertical1(context);}, child: Container(height: 53.v, width: 83.h, margin: EdgeInsets.only(left: 16.h), child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.center, child: Container(padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 1.v), decoration: AppDecoration.fillOnErrorContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder1), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 32.v), Text("lbl_likes".tr, style: CustomTextStyles.titleSmallErrorContainer)]))), Align(alignment: Alignment.topCenter, child: Text("lbl_27m".tr, style: theme.textTheme.headlineSmall))])))])); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomElevatedButton(height: 38.v, width: 132.h, text: "lbl_follow".tr, margin: EdgeInsets.symmetric(vertical: 1.v), leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgSearch, height: 16.adaptSize, width: 16.adaptSize)), buttonStyle: CustomButtonStyles.fillPrimaryTL19, buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainerSemiBold), CustomOutlinedButton(width: 132.h, text: "lbl_message".tr, margin: EdgeInsets.only(left: 12.h, top: 1.v, bottom: 1.v), leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgUserPrimary, height: 16.adaptSize, width: 16.adaptSize)), buttonStyle: CustomButtonStyles.outlinePrimaryTL19, buttonTextStyle: CustomTextStyles.titleMediumPrimarySemiBold, onPressed: () {onTapMessage(context);}), Padding(padding: EdgeInsets.only(left: 12.h), child: CustomIconButton(height: 40.adaptSize, width: 40.adaptSize, padding: EdgeInsets.all(8.h), decoration: IconButtonStyleHelper.fillRedA, child: CustomImageView(imagePath: ImageConstant.imgCategoriesInstagram))), Padding(padding: EdgeInsets.only(left: 12.h), child: CustomIconButton(height: 40.adaptSize, width: 40.adaptSize, padding: EdgeInsets.all(8.h), decoration: IconButtonStyleHelper.fillRedA, child: CustomImageView(imagePath: ImageConstant.imgFavoritePrimary)))])); } 
/// Section Widget
Widget _buildTabBarView(BuildContext context) { return SizedBox(height: 474.v, child: TabBarView(controller: tabviewController, children: [ProfilePage(), ProfilePage(), ProfilePage()])); } 
/// Common widget
Widget _buildAutoLayoutVertical(BuildContext context, {required String distance, required String followers, Function? onTapAutoLayoutVertical, }) { return GestureDetector(onTap: () {onTapAutoLayoutVertical!.call();}, child: Container(padding: EdgeInsets.symmetric(horizontal: 11.h), decoration: AppDecoration.fillOnErrorContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder1), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Text(distance, style: theme.textTheme.headlineSmall!.copyWith(color: appTheme.gray900)), SizedBox(height: 5.v), Text(followers, style: CustomTextStyles.titleSmallErrorContainer.copyWith(color: theme.colorScheme.errorContainer)), SizedBox(height: 1.v)]))); } 
/// Navigates to the followersTabContainerScreen when the action is triggered.
onTapAutoLayoutVertical(BuildContext context) { NavigatorService.pushNamed(AppRoutes.followersTabContainerScreen, ); } 

/// Displays a dialog with the [TotalLikesDialog] content.
onTapAutoLayoutVertical1(BuildContext context) { showDialog(context: context, builder: (_) => AlertDialog(content: TotalLikesDialog.builder(context),backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0),)); } 
/// Navigates to the sendMessageScreen when the action is triggered.
onTapMessage(BuildContext context) { NavigatorService.pushNamed(AppRoutes.sendMessageScreen, ); } 
 }
