import '../search_result_profile_page/widgets/following_item_widget.dart';import '../search_result_profile_page/widgets/fortyfive_item_widget.dart';import 'package:flutter/material.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';class SearchResultProfilePage extends StatefulWidget {const SearchResultProfilePage({Key? key}) : super(key: key);

@override SearchResultProfilePageState createState() =>  SearchResultProfilePageState();

 }
class SearchResultProfilePageState extends State<SearchResultProfilePage> with  AutomaticKeepAliveClientMixin<SearchResultProfilePage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 24.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [_buildFortyFive(context), SizedBox(height: 24.v), _buildFollowing(context)]))])))); } 
/// Section Widget
Widget _buildFortyFive(BuildContext context) { return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: 5, itemBuilder: (context, index) {return FortyfiveItemWidget(onTapArtist: () {onTapArtist(context);});}); } 
/// Section Widget
Widget _buildFollowing(BuildContext context) { return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 1.v);}, itemCount: 1, itemBuilder: (context, index) {return FollowingItemWidget(onTapArtist: () {onTapArtist(context);});}); } 
/// Navigates to the profileDetailsScreen when the action is triggered.
onTapArtist(BuildContext context) { Navigator.pushNamed(context, AppRoutes.profileDetailsScreen); } 
 }
