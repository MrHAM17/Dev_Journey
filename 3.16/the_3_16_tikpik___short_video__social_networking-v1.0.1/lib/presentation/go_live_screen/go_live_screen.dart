import 'bloc/go_live_bloc.dart';import 'models/go_live_model.dart';import 'package:flutter/material.dart';import 'package:the_3_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title_button.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_trailing_image.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';class GoLiveScreen extends StatelessWidget {const GoLiveScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<GoLiveBloc>(create: (context) => GoLiveBloc(GoLiveState(goLiveModelObj: GoLiveModel()))..add(GoLiveInitialEvent()), child: GoLiveScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<GoLiveBloc, GoLiveState>(builder: (context, state) {return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, body: Container(width: SizeUtils.width, height: SizeUtils.height, decoration: BoxDecoration(color: theme.colorScheme.onErrorContainer, image: DecorationImage(image: AssetImage(ImageConstant.imgPostsQuickPhoto), fit: BoxFit.cover)), child: SizedBox(width: double.maxFinite, child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 32.v), SizedBox(height: 850.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.bottomCenter, child: Container(height: 200.v, width: double.maxFinite, decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [theme.colorScheme.primaryContainer, theme.colorScheme.primaryContainer.withOpacity(0.6)])))), Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 36.v), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [_buildAppBar(context), SizedBox(height: 32.v), _buildAutoLayoutVertical(context, categoriesFilter: ImageConstant.imgCategoriesRepost, filter: "lbl_flip".tr, onTapCategoriesFilter: () {onTapCategoriesRepost(context);}), SizedBox(height: 22.v), _buildAutoLayoutVertical(context, categoriesFilter: ImageConstant.imgCategoriesFilter, filter: "lbl_filter".tr), SizedBox(height: 23.v), _buildAutoLayoutVertical(context, categoriesFilter: ImageConstant.imgUserOnerrorcontainer36x36, filter: "lbl_effects".tr), SizedBox(height: 23.v), _buildAutoLayoutVertical(context, categoriesFilter: ImageConstant.imgCategoriesTimer, filter: "lbl_timer".tr), SizedBox(height: 23.v), _buildAutoLayoutVertical(context, categoriesFilter: ImageConstant.imgUser, filter: "lbl_comm".tr), SizedBox(height: 23.v), _buildAutoLayoutVertical(context, categoriesFilter: ImageConstant.imgCategoriesShare, filter: "lbl_share".tr), Spacer(), CustomElevatedButton(text: "lbl_go_live_now".tr, buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer16, alignment: Alignment.center)])))]))])))));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 32.v, leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgCategoriesXCloseOnerrorcontainer, margin: EdgeInsets.only(left: 24.h, top: 4.v, bottom: 4.v), onTap: () {onTapCategoriesXClose(context);}), centerTitle: true, title: AppbarTitleButton(), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgIconlyCurvedSetting, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 4.v))]); } 
/// Common widget
Widget _buildAutoLayoutVertical(BuildContext context, {required String categoriesFilter, required String filter, Function? onTapCategoriesFilter, }) { return Container(padding: EdgeInsets.symmetric(horizontal: 26.h), child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [CustomImageView(imagePath: categoriesFilter, height: 36.adaptSize, width: 36.adaptSize, onTap: () {onTapCategoriesFilter!.call();}), SizedBox(height: 5.v), Padding(padding: EdgeInsets.only(right: 3.h), child: Text(filter, style: theme.textTheme.labelLarge!.copyWith(color: theme.colorScheme.onErrorContainer)))])); } 

/// Navigates to the previous screen.
onTapCategoriesXClose(BuildContext context) { NavigatorService.goBack(); } 
/// Requests permission to access the camera and storage, and displays a model
/// sheet for selecting images.
///
/// Throws an error if permission is denied or an error occurs while selecting images.
onTapCategoriesRepost(BuildContext context) async  { await PermissionManager.askForPermission(Permission.camera);await PermissionManager.askForPermission(Permission.storage);List<String?>? imageList = [];await FileManager().showModelSheetForImage(getImages: (value) async {imageList = value;}); } 
 }