import '../explore_page/widgets/explore_item_widget.dart';import 'bloc/explore_bloc.dart';import 'models/explore_item_model.dart';import 'models/explore_model.dart';import 'package:flutter/material.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_title.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/custom_search_view.dart';class ExplorePage extends StatelessWidget {const ExplorePage({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<ExploreBloc>(create: (context) => ExploreBloc(ExploreState(exploreModelObj: ExploreModel()))..add(ExploreInitialEvent()), child: ExplorePage()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [_buildHeaderContent(context), Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 17.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_browse_all".tr, style: theme.textTheme.titleLarge), SizedBox(height: 24.v), _buildExplore(context)]))])))); } 
/// Section Widget
Widget _buildHeaderContent(BuildContext context) { return Container(padding: EdgeInsets.symmetric(vertical: 5.v), decoration: AppDecoration.fillWhiteA, child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 9.v), CustomAppBar(height: 33.v, leadingWidth: 56.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgVector, margin: EdgeInsets.only(left: 24.h, bottom: 1.v)), title: AppbarTitle(text: "lbl_explore".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgSettingsGray90001, margin: EdgeInsets.fromLTRB(24.h, 2.v, 24.h, 3.v))]), SizedBox(height: 38.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: BlocSelector<ExploreBloc, ExploreState, TextEditingController?>(selector: (state) => state.searchController, builder: (context, searchController) {return CustomSearchView(controller: searchController, hintText: "msg_artists_songs".tr, contentPadding: EdgeInsets.only(top: 19.v, right: 30.h, bottom: 19.v));}))])); } 
/// Section Widget
Widget _buildExplore(BuildContext context) { return BlocSelector<ExploreBloc, ExploreState, ExploreModel?>(selector: (state) => state.exploreModelObj, builder: (context, exploreModelObj) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 121.v, crossAxisCount: 2, mainAxisSpacing: 12.h, crossAxisSpacing: 12.h), physics: NeverScrollableScrollPhysics(), itemCount: exploreModelObj?.exploreItemList.length ?? 0, itemBuilder: (context, index) {ExploreItemModel model = exploreModelObj?.exploreItemList[index] ?? ExploreItemModel(); return ExploreItemWidget(model, onTapExploreCard: () {onTapExploreCard(context);});});}); } 
/// Navigates to the podcastsScreen when the action is triggered.
onTapExploreCard(BuildContext context) { NavigatorService.pushNamed(AppRoutes.podcastsScreen, ); } 
 }
