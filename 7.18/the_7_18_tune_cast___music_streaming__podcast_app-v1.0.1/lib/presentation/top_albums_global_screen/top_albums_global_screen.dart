import '../top_albums_global_screen/widgets/topalbumsglobal2_item_widget.dart';import 'package:flutter/material.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';class TopAlbumsGlobalScreen extends StatelessWidget {const TopAlbumsGlobalScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 30.v), child: Column(children: [_buildPrice(context), SizedBox(height: 18.v), Text("Top Albums Global", style: theme.textTheme.headlineSmall), SizedBox(height: 12.v), Text("The most played albums from last week.", style: CustomTextStyles.titleMediumMedium), SizedBox(height: 14.v), Text("By Hearme | 12/24/2022", style: CustomTextStyles.titleSmallGray70001), SizedBox(height: 23.v), Divider(), SizedBox(height: 23.v), _buildTopAlbumsGlobal(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingImage(imagePath: ImageConstant.imgIconlyLightOutlineArrow, margin: EdgeInsets.fromLTRB(24.h, 11.v, 376.h, 11.v), onTap: () {onTapImage(context);})); } 
/// Section Widget
Widget _buildPrice(BuildContext context) { return SizedBox(height: 184.v, width: 380.h, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgImage184x380, height: 184.v, width: 380.h, radius: BorderRadius.circular(28.h), alignment: Alignment.center), Align(alignment: Alignment.center, child: SizedBox(width: 98.h, child: Text("TOP\nALBUMS\nGLOBAL", maxLines: 3, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.headlineSmallWhiteA700.copyWith(height: 1.20))))])); } 
/// Section Widget
Widget _buildTopAlbumsGlobal(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 8.h), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: 5, itemBuilder: (context, index) {return Topalbumsglobal2ItemWidget(onTapSongCard: () {onTapSongCard(context);});})); } 
/// Navigates to the songPlayScreen when the action is triggered.
onTapSongCard(BuildContext context) { Navigator.pushNamed(context, AppRoutes.songPlayScreen); } 

/// Navigates back to the previous screen.
onTapImage(BuildContext context) { Navigator.pop(context); } 
 }
