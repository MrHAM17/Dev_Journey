import 'bloc/home_bloc.dart';import 'models/home_model.dart';import 'package:flutter/material.dart';import 'package:the_3_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_trailing_image.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/comments_bottomsheet/comments_bottomsheet.dart';class HomePage extends StatelessWidget {const HomePage({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<HomeBloc>(create: (context) => HomeBloc(HomeState(homeModelObj: HomeModel()))..add(HomeInitialEvent()), child: HomePage()); } 
@override Widget build(BuildContext context) { return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(height: 747.v, width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 8.v), child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 64.h), child: Column(mainAxisSize: MainAxisSize.min, children: [Text("msg_swipe_up_to_see".tr, style: CustomTextStyles.titleMediumOnErrorContainer), SizedBox(height: 31.v), CustomImageView(imagePath: ImageConstant.imgVectorCyanA400, height: 169.v, width: 187.h)]))), _buildAutoLayoutHorizontal(context)]))));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 44.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgCategoriesLive, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 7.v), onTap: () {onTapCategoriesLive(context);}), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgRewind, margin: EdgeInsets.fromLTRB(24.h, 8.v, 24.h, 7.v), onTap: () {onTapRewind(context);})]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal(BuildContext context) { return Align(alignment: Alignment.bottomCenter, child: Container(width: 378.h, margin: EdgeInsets.only(top: 386.v, right: 1.h), decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgAutoLayoutHorizontal344x378), fit: BoxFit.cover)), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(top: 180.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Row(children: [SizedBox(height: 60.adaptSize, width: 60.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgEllipse60x60, height: 60.adaptSize, width: 60.adaptSize, radius: BorderRadius.circular(30.h), alignment: Alignment.center), CustomImageView(imagePath: ImageConstant.imgClose, height: 15.adaptSize, width: 15.adaptSize, alignment: Alignment.bottomRight)])), Padding(padding: EdgeInsets.only(left: 20.h, top: 7.v, bottom: 7.v), child: Column(children: [Text("lbl_jenny_wilson".tr, style: CustomTextStyles.titleMediumOnErrorContainer_2), SizedBox(height: 5.v), Text("msg_actress_singer".tr, style: CustomTextStyles.titleSmallGray300)]))]), SizedBox(height: 21.v), SizedBox(width: 262.h, child: Text("msg_hi_everyone_in".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleSmallOnErrorContainer_1.copyWith(height: 1.40))), SizedBox(height: 18.v), GestureDetector(onTap: () {onTapAutoLayoutHorizontal(context);}, child: Row(children: [CustomImageView(imagePath: ImageConstant.imgPlay, height: 24.adaptSize, width: 24.adaptSize), CustomImageView(imagePath: ImageConstant.imgCategoriesMusic, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 8.h, top: 4.v, bottom: 4.v)), Padding(padding: EdgeInsets.only(left: 8.h, top: 5.v, bottom: 3.v), child: Text("msg_favorite_girl_by".tr, style: theme.textTheme.labelLarge))]))])), Padding(padding: EdgeInsets.only(left: 79.h), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgCategoriesReport, height: 24.adaptSize, width: 24.adaptSize, onTap: () {onTapImgCategoriesReport(context);}), SizedBox(height: 24.v), _buildAutoLayoutVertical(context, user: ImageConstant.imgIconlyBoldHeart, k: "lbl_225_9k".tr), SizedBox(height: 23.v), _buildAutoLayoutVertical(context, user: ImageConstant.imgUser, k: "lbl_24_8k".tr, onTapAutoLayoutVertical: () {onTapAutoLayoutVertical(context);}), SizedBox(height: 23.v), CustomImageView(imagePath: ImageConstant.imgBookmark, height: 36.adaptSize, width: 36.adaptSize), SizedBox(height: 5.v), Text("lbl_15_6k".tr, style: theme.textTheme.labelLarge), SizedBox(height: 23.v), CustomImageView(imagePath: ImageConstant.imgCategoriesShare, height: 36.adaptSize, width: 36.adaptSize), SizedBox(height: 5.v), Text("lbl_20_7k".tr, style: theme.textTheme.labelLarge)]))]))); } 
/// Common widget
Widget _buildAutoLayoutVertical(BuildContext context, {required String user, required String k, Function? onTapAutoLayoutVertical, }) { return GestureDetector(onTap: () {onTapAutoLayoutVertical!.call();}, child: Column(children: [CustomImageView(imagePath: user, height: 36.adaptSize, width: 36.adaptSize), SizedBox(height: 5.v), Text(k, style: theme.textTheme.labelLarge!.copyWith(color: theme.colorScheme.onErrorContainer))])); } 
/// Navigates to the seeLiveScreen when the action is triggered.
onTapCategoriesLive(BuildContext context) { NavigatorService.pushNamed(AppRoutes.seeLiveScreen, ); } 
/// Navigates to the searchTypeKeywordScreen when the action is triggered.
onTapRewind(BuildContext context) { NavigatorService.pushNamed(AppRoutes.searchTypeKeywordScreen, ); } 
/// Navigates to the soundUsedScreen when the action is triggered.
onTapAutoLayoutHorizontal(BuildContext context) { NavigatorService.pushNamed(AppRoutes.soundUsedScreen, ); } 
/// Navigates to the reportScreen when the action is triggered.
onTapImgCategoriesReport(BuildContext context) { NavigatorService.pushNamed(AppRoutes.reportScreen, ); } 

/// Displays a bottom sheet widget using the [showModalBottomSheet] method 
/// of the [Scaffold] class with [isScrollControlled] set to true.
///
/// The bottom sheet is built using the [CommentsBottomsheet]
/// class and the [builder] method of the bottom sheet is passed the
/// [BuildContext] object.
onTapAutoLayoutVertical(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>CommentsBottomsheet.builder(context),isScrollControlled: true); } 
 }