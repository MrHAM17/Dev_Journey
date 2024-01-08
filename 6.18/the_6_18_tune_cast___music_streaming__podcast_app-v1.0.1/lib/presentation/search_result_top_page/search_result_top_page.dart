import '../search_result_top_page/widgets/follow_item_widget.dart';import '../search_result_top_page/widgets/teenagedream_item_widget.dart';import 'models/follow_item_model.dart';import 'models/teenagedream_item_model.dart';import 'notifier/search_result_top_notifier.dart';import 'package:flutter/material.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';class SearchResultTopPage extends ConsumerStatefulWidget {const SearchResultTopPage({Key? key}) : super(key: key);

@override SearchResultTopPageState createState() =>  SearchResultTopPageState();

 }
class SearchResultTopPageState extends ConsumerState<SearchResultTopPage> with  AutomaticKeepAliveClientMixin<SearchResultTopPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 24.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [_buildFollow(context), SizedBox(height: 16.v), _buildTeenageDream(context)]))]))))); } 
/// Section Widget
Widget _buildFollow(BuildContext context) { return Consumer(builder: (context, ref, _) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: ref.watch(searchResultTopNotifier).searchResultTopModelObj?.followItemList.length ?? 0, itemBuilder: (context, index) {FollowItemModel model = ref.watch(searchResultTopNotifier).searchResultTopModelObj?.followItemList[index] ?? FollowItemModel(); return FollowItemWidget(model, onTapSongCard: () {onTapSongCard(context);});});}); } 
/// Section Widget
Widget _buildTeenageDream(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 9.h), child: Consumer(builder: (context, ref, _) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 1.v);}, itemCount: ref.watch(searchResultTopNotifier).searchResultTopModelObj?.teenagedreamItemList.length ?? 0, itemBuilder: (context, index) {TeenagedreamItemModel model = ref.watch(searchResultTopNotifier).searchResultTopModelObj?.teenagedreamItemList[index] ?? TeenagedreamItemModel(); return TeenagedreamItemWidget(model);});})); } 
/// Navigates to the songPlayScreen when the action is triggered.
onTapSongCard(BuildContext context) { NavigatorService.pushNamed(AppRoutes.songPlayScreen, ); } 
 }
