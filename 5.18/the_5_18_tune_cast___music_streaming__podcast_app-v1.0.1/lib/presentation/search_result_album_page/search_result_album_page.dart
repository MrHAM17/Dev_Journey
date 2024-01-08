import '../search_result_album_page/widgets/searchresultalbum_item_widget.dart';import 'models/search_result_album_model.dart';import 'models/searchresultalbum_item_model.dart';import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'provider/search_result_album_provider.dart';class SearchResultAlbumPage extends StatefulWidget {const SearchResultAlbumPage({Key? key}) : super(key: key);

@override SearchResultAlbumPageState createState() =>  SearchResultAlbumPageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SearchResultAlbumProvider(), child: SearchResultAlbumPage()); } 
 }
class SearchResultAlbumPageState extends State<SearchResultAlbumPage> with  AutomaticKeepAliveClientMixin<SearchResultAlbumPage> {@override bool get wantKeepAlive =>  true;

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 21.v), _buildSearchResultAlbum(context)])))); } 
/// Section Widget
Widget _buildSearchResultAlbum(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Consumer<SearchResultAlbumProvider>(builder: (context, provider, child) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 267.v, crossAxisCount: 2, mainAxisSpacing: 12.h, crossAxisSpacing: 12.h), physics: NeverScrollableScrollPhysics(), itemCount: provider.searchResultAlbumModelObj.searchresultalbumItemList.length, itemBuilder: (context, index) {SearchresultalbumItemModel model = provider.searchResultAlbumModelObj.searchresultalbumItemList[index]; return SearchresultalbumItemWidget(model, onTapCardBig: () {onTapCardBig(context);});});})); } 
/// Navigates to the albumDetailsScreen when the action is triggered.
onTapCardBig(BuildContext context) { NavigatorService.pushNamed(AppRoutes.albumDetailsScreen, ); } 
 }
