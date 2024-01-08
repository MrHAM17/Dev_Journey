import 'bloc/posts_upload_media_tab_container_bloc.dart';import 'models/posts_upload_media_tab_container_model.dart';import 'package:flutter/material.dart';import 'package:the_3_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/posts_upload_media_page/posts_upload_media_page.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';class PostsUploadMediaTabContainerScreen extends StatefulWidget {const PostsUploadMediaTabContainerScreen({Key? key}) : super(key: key);

@override PostsUploadMediaTabContainerScreenState createState() =>  PostsUploadMediaTabContainerScreenState();

static Widget builder(BuildContext context) { return BlocProvider<PostsUploadMediaTabContainerBloc>(create: (context) => PostsUploadMediaTabContainerBloc(PostsUploadMediaTabContainerState(postsUploadMediaTabContainerModelObj: PostsUploadMediaTabContainerModel()))..add(PostsUploadMediaTabContainerInitialEvent()), child: PostsUploadMediaTabContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class PostsUploadMediaTabContainerScreenState extends State<PostsUploadMediaTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 3, vsync: this); } 
@override Widget build(BuildContext context) { return BlocBuilder<PostsUploadMediaTabContainerBloc, PostsUploadMediaTabContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 25.v), _buildTabview(context), SizedBox(height: 772.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [SizedBox(height: 772.v, child: TabBarView(controller: tabviewController, children: [PostsUploadMediaPage(), PostsUploadMediaPage(), PostsUploadMediaPage()])), _buildAutoLayoutVertical(context)]))]))));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 44.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgCategoriesXCloseGray900, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapCategoriesXClose(context);}), centerTitle: true, title: AppbarTitle(text: "lbl_all_media".tr), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgSettingsGray900, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 8.v))]); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 39.v, width: 361.h, margin: EdgeInsets.only(left: 24.h), child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: theme.colorScheme.primary, labelStyle: TextStyle(fontSize: 18.fSize, fontFamily: 'Urbanist', fontWeight: FontWeight.w600), unselectedLabelColor: appTheme.gray500, unselectedLabelStyle: TextStyle(fontSize: 18.fSize, fontFamily: 'Urbanist', fontWeight: FontWeight.w600), indicatorColor: theme.colorScheme.primary, tabs: [Tab(child: Text("lbl_all".tr)), Tab(child: Text("lbl_videos".tr)), Tab(child: Text("lbl_photos".tr))])); } 
/// Section Widget
Widget _buildAutoLayoutVertical(BuildContext context) { return Align(alignment: Alignment.bottomCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 19.v), decoration: AppDecoration.outlineGray1003.copyWith(borderRadius: BorderRadiusStyle.customBorderTL24), child: Column(mainAxisSize: MainAxisSize.min, children: [Text("msg_you_can_select_both".tr, style: CustomTextStyles.titleSmallErrorContainer), SizedBox(height: 16.v), CustomElevatedButton(text: "lbl_next".tr, buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer16, onPressed: () {onTapNext(context);}), SizedBox(height: 17.v)]))); } 

/// Navigates to the previous screen.
onTapCategoriesXClose(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the postsEditPageScreen when the action is triggered.
onTapNext(BuildContext context) { NavigatorService.pushNamed(AppRoutes.postsEditPageScreen, ); } 
 }
