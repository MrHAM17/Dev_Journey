import '../search_results_songs_page/widgets/searchresultssongs_item_widget.dart';import 'models/search_results_songs_model.dart';import 'models/searchresultssongs_item_model.dart';import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'provider/search_results_songs_provider.dart';class SearchResultsSongsPage extends StatefulWidget {const SearchResultsSongsPage({Key? key}) : super(key: key);

@override SearchResultsSongsPageState createState() =>  SearchResultsSongsPageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SearchResultsSongsProvider(), child: SearchResultsSongsPage()); } 
 }
class SearchResultsSongsPageState extends State<SearchResultsSongsPage> with  AutomaticKeepAliveClientMixin<SearchResultsSongsPage> {@override bool get wantKeepAlive =>  true;

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 24.v), _buildSearchResultsSongs(context)])))); } 
/// Section Widget
Widget _buildSearchResultsSongs(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Consumer<SearchResultsSongsProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: provider.searchResultsSongsModelObj.searchresultssongsItemList.length, itemBuilder: (context, index) {SearchresultssongsItemModel model = provider.searchResultsSongsModelObj.searchresultssongsItemList[index]; return SearchresultssongsItemWidget(model, onTapSongTitle: () {onTapSongTitle(context);});});})); } 
/// Navigates to the songDetailsScreen when the action is triggered.
onTapSongTitle(BuildContext context) { NavigatorService.pushNamed(AppRoutes.songDetailsScreen, ); } 
 }
