import '../song_play_over_screen_page/widgets/songplayoverscreen_item_widget.dart';import 'package:flutter/material.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';class SongPlayOverScreenPage extends StatefulWidget {const SongPlayOverScreenPage({Key? key}) : super(key: key);

@override SongPlayOverScreenPageState createState() =>  SongPlayOverScreenPageState();

 }
class SongPlayOverScreenPageState extends State<SongPlayOverScreenPage> with  AutomaticKeepAliveClientMixin<SongPlayOverScreenPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 24.v), Column(children: [_buildSongPlayOverScreen(context), SizedBox(height: 48.v), _buildAutoLayoutVertical(context)])])))); } 
/// Section Widget
Widget _buildSongPlayOverScreen(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 26.h, right: 22.h), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: 6, itemBuilder: (context, index) {return SongplayoverscreenItemWidget(onTapSongCard: () {onTapSongCard(context);});})); } 
/// Section Widget
Widget _buildAutoLayoutVertical(BuildContext context) { return GestureDetector(onTap: () {onTapAutoLayoutVertical(context);}, child: Container(width: double.maxFinite, padding: EdgeInsets.all(23.h), decoration: AppDecoration.outlineGray100.copyWith(borderRadius: BorderRadiusStyle.customBorderTL32), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgSettings48x48, height: 48.adaptSize, width: 48.adaptSize, margin: EdgeInsets.only(bottom: 12.v)), Padding(padding: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 24.v), child: Text("Starboy - The Weeknd, Daft Pu...", style: CustomTextStyles.titleMediumSemiBold)), CustomImageView(imagePath: ImageConstant.imgIconlyBoldPlayOnprimarycontainer, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 23.h, top: 14.v, bottom: 26.v)), CustomImageView(imagePath: ImageConstant.imgCategoriesNext, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 26.v))]))); } 
/// Navigates to the songPlayScreen when the action is triggered.
onTapSongCard(BuildContext context) { Navigator.pushNamed(context, AppRoutes.songPlayScreen); } 
/// Navigates to the songPlayScreen when the action is triggered.
onTapAutoLayoutVertical(BuildContext context) { Navigator.pushNamed(context, AppRoutes.songPlayScreen); } 
 }
