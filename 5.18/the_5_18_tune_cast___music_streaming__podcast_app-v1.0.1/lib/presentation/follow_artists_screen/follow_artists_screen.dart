import '../follow_artists_screen/widgets/followartists_item_widget.dart';import 'models/follow_artists_model.dart';import 'models/followartists_item_model.dart';import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_title.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/custom_elevated_button.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/custom_outlined_button.dart';import 'provider/follow_artists_provider.dart';class FollowArtistsScreen extends StatefulWidget {const FollowArtistsScreen({Key? key}) : super(key: key);

@override FollowArtistsScreenState createState() =>  FollowArtistsScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => FollowArtistsProvider(), child: FollowArtistsScreen()); } 
 }
class FollowArtistsScreenState extends State<FollowArtistsScreen> {@override void initState() { super.initState();NavigatorService.pushNamed(AppRoutes.homeContainerScreen, );NavigatorService.pushNamed(AppRoutes.homeContainerScreen, ); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 26.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(width: 357.h, margin: EdgeInsets.only(right: 22.h), child: Text("msg_follow_your_favorite".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyLarge!.copyWith(height: 1.40))), SizedBox(height: 32.v), _buildFollowArtists(context)])), bottomNavigationBar: _buildAutoLayoutVertical(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 48.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 9.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "lbl_follow_artists".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildFollowArtists(BuildContext context) { return Consumer<FollowArtistsProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: provider.followArtistsModelObj.followartistsItemList.length, itemBuilder: (context, index) {FollowartistsItemModel model = provider.followArtistsModelObj.followartistsItemList[index]; return FollowartistsItemWidget(model);});}); } 
/// Section Widget
Widget _buildSkip(BuildContext context) { return CustomOutlinedButton(width: 180.h, text: "lbl_skip".tr, onPressed: () {onTapSkip(context);}); } 
/// Section Widget
Widget _buildContinue(BuildContext context) { return CustomElevatedButton(width: 180.h, text: "lbl_continue".tr, margin: EdgeInsets.only(left: 20.h), onPressed: () {onTapContinue(context);}); } 
/// Section Widget
Widget _buildAutoLayoutVertical(BuildContext context) { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 48.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.customBorderTL40), child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [_buildSkip(context), _buildContinue(context)])); } 

/// Navigates to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapSkip(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeContainerScreen, ); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapContinue(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeContainerScreen, ); } 
 }
