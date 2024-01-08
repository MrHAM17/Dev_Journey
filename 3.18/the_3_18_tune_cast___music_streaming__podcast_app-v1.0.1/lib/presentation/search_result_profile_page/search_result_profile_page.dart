import '../search_result_profile_page/widgets/following_item_widget.dart';import '../search_result_profile_page/widgets/fortyfive_item_widget.dart';import 'bloc/search_result_profile_bloc.dart';import 'models/following_item_model.dart';import 'models/fortyfive_item_model.dart';import 'models/search_result_profile_model.dart';import 'package:flutter/material.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';class SearchResultProfilePage extends StatefulWidget {const SearchResultProfilePage({Key? key}) : super(key: key);

@override SearchResultProfilePageState createState() =>  SearchResultProfilePageState();

static Widget builder(BuildContext context) { return BlocProvider<SearchResultProfileBloc>(create: (context) => SearchResultProfileBloc(SearchResultProfileState(searchResultProfileModelObj: SearchResultProfileModel()))..add(SearchResultProfileInitialEvent()), child: SearchResultProfilePage()); } 
 }
class SearchResultProfilePageState extends State<SearchResultProfilePage> with  AutomaticKeepAliveClientMixin<SearchResultProfilePage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 24.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [_buildFortyFive(context), SizedBox(height: 24.v), _buildFollowing(context)]))])))); } 
/// Section Widget
Widget _buildFortyFive(BuildContext context) { return BlocSelector<SearchResultProfileBloc, SearchResultProfileState, SearchResultProfileModel?>(selector: (state) => state.searchResultProfileModelObj, builder: (context, searchResultProfileModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: searchResultProfileModelObj?.fortyfiveItemList.length ?? 0, itemBuilder: (context, index) {FortyfiveItemModel model = searchResultProfileModelObj?.fortyfiveItemList[index] ?? FortyfiveItemModel(); return FortyfiveItemWidget(model, onTapArtist: () {onTapArtist(context);});});}); } 
/// Section Widget
Widget _buildFollowing(BuildContext context) { return BlocSelector<SearchResultProfileBloc, SearchResultProfileState, SearchResultProfileModel?>(selector: (state) => state.searchResultProfileModelObj, builder: (context, searchResultProfileModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 1.v);}, itemCount: searchResultProfileModelObj?.followingItemList.length ?? 0, itemBuilder: (context, index) {FollowingItemModel model = searchResultProfileModelObj?.followingItemList[index] ?? FollowingItemModel(); return FollowingItemWidget(model, onTapArtist: () {onTapArtist(context);});});}); } 
/// Navigates to the profileDetailsScreen when the action is triggered.
onTapArtist(BuildContext context) { NavigatorService.pushNamed(AppRoutes.profileDetailsScreen, ); } 
 }
