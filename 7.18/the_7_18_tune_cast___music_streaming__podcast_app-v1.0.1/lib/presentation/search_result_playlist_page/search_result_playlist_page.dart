import '../search_result_playlist_page/widgets/searchresultplaylist_item_widget.dart';import 'package:flutter/material.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';class SearchResultPlaylistPage extends StatefulWidget {const SearchResultPlaylistPage({Key? key}) : super(key: key);

@override SearchResultPlaylistPageState createState() =>  SearchResultPlaylistPageState();

 }
class SearchResultPlaylistPageState extends State<SearchResultPlaylistPage> with  AutomaticKeepAliveClientMixin<SearchResultPlaylistPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 24.v), _buildSearchResultPlaylist(context)])))); } 
/// Section Widget
Widget _buildSearchResultPlaylist(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 249.v, crossAxisCount: 1, mainAxisSpacing: 1.h, crossAxisSpacing: 1.h), physics: NeverScrollableScrollPhysics(), itemCount: 2, itemBuilder: (context, index) {return SearchresultplaylistItemWidget(onTapCardBig: () {onTapCardBig(context);});})); } 
/// Navigates to the playlistDetailsOneScreen when the action is triggered.
onTapCardBig(BuildContext context) { Navigator.pushNamed(context, AppRoutes.playlistDetailsOneScreen); } 
 }
