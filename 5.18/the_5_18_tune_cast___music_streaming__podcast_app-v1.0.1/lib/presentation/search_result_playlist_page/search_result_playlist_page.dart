import '../search_result_playlist_page/widgets/searchresultplaylist_item_widget.dart';import 'models/search_result_playlist_model.dart';import 'models/searchresultplaylist_item_model.dart';import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'provider/search_result_playlist_provider.dart';class SearchResultPlaylistPage extends StatefulWidget {const SearchResultPlaylistPage({Key? key}) : super(key: key);

@override SearchResultPlaylistPageState createState() =>  SearchResultPlaylistPageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SearchResultPlaylistProvider(), child: SearchResultPlaylistPage()); } 
 }
class SearchResultPlaylistPageState extends State<SearchResultPlaylistPage> with  AutomaticKeepAliveClientMixin<SearchResultPlaylistPage> {@override bool get wantKeepAlive =>  true;

@override void initState() { super.initState();NavigatorService.pushNamed(AppRoutes.playlistDetailsOneScreen, ); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 24.v), _buildSearchResultPlaylist(context)])))); } 
/// Section Widget
Widget _buildSearchResultPlaylist(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Consumer<SearchResultPlaylistProvider>(builder: (context, provider, child) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 249.v, crossAxisCount: 1, mainAxisSpacing: 1.h, crossAxisSpacing: 1.h), physics: NeverScrollableScrollPhysics(), itemCount: provider.searchResultPlaylistModelObj.searchresultplaylistItemList.length, itemBuilder: (context, index) {SearchresultplaylistItemModel model = provider.searchResultPlaylistModelObj.searchresultplaylistItemList[index]; return SearchresultplaylistItemWidget(model, onTapCardBig: () {onTapCardBig(context);});});})); } 
/// Navigates to the playlistDetailsOneScreen when the action is triggered.
onTapCardBig(BuildContext context) { NavigatorService.pushNamed(AppRoutes.playlistDetailsOneScreen); } 
 }
