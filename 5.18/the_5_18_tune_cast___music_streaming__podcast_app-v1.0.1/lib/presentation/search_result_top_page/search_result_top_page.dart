import '../search_result_top_page/widgets/follow_item_widget.dart';import '../search_result_top_page/widgets/teenagedream_item_widget.dart';import 'models/follow_item_model.dart';import 'models/search_result_top_model.dart';import 'models/teenagedream_item_model.dart';import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'provider/search_result_top_provider.dart';class SearchResultTopPage extends StatefulWidget {const SearchResultTopPage({Key? key}) : super(key: key);

@override SearchResultTopPageState createState() =>  SearchResultTopPageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SearchResultTopProvider(), child: SearchResultTopPage()); } 
 }
class SearchResultTopPageState extends State<SearchResultTopPage> with  AutomaticKeepAliveClientMixin<SearchResultTopPage> {@override bool get wantKeepAlive =>  true;

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 24.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [_buildFollow(context), SizedBox(height: 16.v), _buildTeenageDream(context)]))]))))); } 
/// Section Widget
Widget _buildFollow(BuildContext context) { return Consumer<SearchResultTopProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: provider.searchResultTopModelObj.followItemList.length, itemBuilder: (context, index) {FollowItemModel model = provider.searchResultTopModelObj.followItemList[index]; return FollowItemWidget(model, onTapSongCard: () {onTapSongCard(context);});});}); } 
/// Section Widget
Widget _buildTeenageDream(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 9.h), child: Consumer<SearchResultTopProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 1.v);}, itemCount: provider.searchResultTopModelObj.teenagedreamItemList.length, itemBuilder: (context, index) {TeenagedreamItemModel model = provider.searchResultTopModelObj.teenagedreamItemList[index]; return TeenagedreamItemWidget(model);});})); } 
/// Navigates to the songPlayScreen when the action is triggered.
onTapSongCard(BuildContext context) { NavigatorService.pushNamed(AppRoutes.songPlayScreen, ); } 
 }
