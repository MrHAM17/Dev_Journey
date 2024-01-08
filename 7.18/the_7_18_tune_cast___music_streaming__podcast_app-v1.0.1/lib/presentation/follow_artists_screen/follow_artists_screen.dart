import '../follow_artists_screen/widgets/followartists_item_widget.dart';import 'package:flutter/material.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_title.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/custom_elevated_button.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/custom_outlined_button.dart';class FollowArtistsScreen extends StatelessWidget {const FollowArtistsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 26.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(width: 357.h, margin: EdgeInsets.only(right: 22.h), child: Text("Follow your favorite artists. Or you can skip it for now.", maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyLarge!.copyWith(height: 1.40))), SizedBox(height: 32.v), _buildFollowArtists(context)])), bottomNavigationBar: _buildAutoLayoutVertical(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 48.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 9.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "Follow Artists", margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildFollowArtists(BuildContext context) { return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: 4, itemBuilder: (context, index) {return FollowartistsItemWidget();}); } 
/// Section Widget
Widget _buildSkip(BuildContext context) { return CustomOutlinedButton(width: 180.h, text: "Skip", onPressed: () {onTapSkip(context);}); } 
/// Section Widget
Widget _buildContinue(BuildContext context) { return CustomElevatedButton(width: 180.h, text: "Continue", margin: EdgeInsets.only(left: 20.h), onPressed: () {onTapContinue(context);}); } 
/// Section Widget
Widget _buildAutoLayoutVertical(BuildContext context) { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 48.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.customBorderTL40), child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [_buildSkip(context), _buildContinue(context)])); } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapSkip(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeContainerScreen); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapContinue(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeContainerScreen); } 
 }
