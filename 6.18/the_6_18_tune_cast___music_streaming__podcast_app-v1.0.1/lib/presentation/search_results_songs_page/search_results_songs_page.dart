import '../search_results_songs_page/widgets/searchresultssongs_item_widget.dart';import 'models/searchresultssongs_item_model.dart';import 'notifier/search_results_songs_notifier.dart';import 'package:flutter/material.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';class SearchResultsSongsPage extends ConsumerStatefulWidget {const SearchResultsSongsPage({Key? key}) : super(key: key);

@override SearchResultsSongsPageState createState() =>  SearchResultsSongsPageState();

 }
class SearchResultsSongsPageState extends ConsumerState<SearchResultsSongsPage> with  AutomaticKeepAliveClientMixin<SearchResultsSongsPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 24.v), _buildSearchResultsSongs(context)])))); } 
/// Section Widget
Widget _buildSearchResultsSongs(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Consumer(builder: (context, ref, _) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: ref.watch(searchResultsSongsNotifier).searchResultsSongsModelObj?.searchresultssongsItemList.length ?? 0, itemBuilder: (context, index) {SearchresultssongsItemModel model = ref.watch(searchResultsSongsNotifier).searchResultsSongsModelObj?.searchresultssongsItemList[index] ?? SearchresultssongsItemModel(); return SearchresultssongsItemWidget(model, onTapSongTitle: () {onTapSongTitle(context);});});})); } 
/// Navigates to the songDetailsScreen when the action is triggered.
onTapSongTitle(BuildContext context) { NavigatorService.pushNamed(AppRoutes.songDetailsScreen, ); } 
 }
