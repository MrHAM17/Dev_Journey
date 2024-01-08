import '../search_result_album_page/widgets/searchresultalbum_item_widget.dart';import 'models/searchresultalbum_item_model.dart';import 'notifier/search_result_album_notifier.dart';import 'package:flutter/material.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';class SearchResultAlbumPage extends ConsumerStatefulWidget {const SearchResultAlbumPage({Key? key}) : super(key: key);

@override SearchResultAlbumPageState createState() =>  SearchResultAlbumPageState();

 }
class SearchResultAlbumPageState extends ConsumerState<SearchResultAlbumPage> with  AutomaticKeepAliveClientMixin<SearchResultAlbumPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 21.v), _buildSearchResultAlbum(context)])))); } 
/// Section Widget
Widget _buildSearchResultAlbum(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Consumer(builder: (context, ref, _) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 267.v, crossAxisCount: 2, mainAxisSpacing: 12.h, crossAxisSpacing: 12.h), physics: NeverScrollableScrollPhysics(), itemCount: ref.watch(searchResultAlbumNotifier).searchResultAlbumModelObj?.searchresultalbumItemList.length ?? 0, itemBuilder: (context, index) {SearchresultalbumItemModel model = ref.watch(searchResultAlbumNotifier).searchResultAlbumModelObj?.searchresultalbumItemList[index] ?? SearchresultalbumItemModel(); return SearchresultalbumItemWidget(model, onTapCardBig: () {onTapCardBig(context);});});})); } 
/// Navigates to the albumDetailsScreen when the action is triggered.
onTapCardBig(BuildContext context) { NavigatorService.pushNamed(AppRoutes.albumDetailsScreen, ); } 
 }
