import '../search_results_songs_page/widgets/searchresultssongs_item_widget.dart';import 'package:flutter/material.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';class SearchResultsSongsPage extends StatefulWidget {const SearchResultsSongsPage({Key? key}) : super(key: key);

@override SearchResultsSongsPageState createState() =>  SearchResultsSongsPageState();

 }
class SearchResultsSongsPageState extends State<SearchResultsSongsPage> with  AutomaticKeepAliveClientMixin<SearchResultsSongsPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 24.v), _buildSearchResultsSongs(context)])))); } 
/// Section Widget
Widget _buildSearchResultsSongs(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: 6, itemBuilder: (context, index) {return SearchresultssongsItemWidget(onTapSongTitle: () {onTapSongTitle(context);});})); } 
/// Navigates to the songDetailsScreen when the action is triggered.
onTapSongTitle(BuildContext context) { Navigator.pushNamed(context, AppRoutes.songDetailsScreen); } 
 }
