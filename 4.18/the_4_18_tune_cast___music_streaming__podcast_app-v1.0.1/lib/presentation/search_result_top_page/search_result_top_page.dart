import '../search_result_top_page/widgets/follow_item_widget.dart';import '../search_result_top_page/widgets/teenagedream_item_widget.dart';import 'controller/search_result_top_controller.dart';import 'models/follow_item_model.dart';import 'models/search_result_top_model.dart';import 'models/teenagedream_item_model.dart';import 'package:flutter/material.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
// ignore_for_file: must_be_immutable
class SearchResultTopPage extends StatelessWidget {SearchResultTopPage({Key? key}) : super(key: key);

SearchResultTopController controller = Get.put(SearchResultTopController(SearchResultTopModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 24.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [_buildFollow(), SizedBox(height: 16.v), _buildTeenageDream()]))]))))); } 
/// Section Widget
Widget _buildFollow() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: controller.searchResultTopModelObj.value.followItemList.value.length, itemBuilder: (context, index) {FollowItemModel model = controller.searchResultTopModelObj.value.followItemList.value[index]; return FollowItemWidget(model, onTapSongCard: () {onTapSongCard();});})); } 
/// Section Widget
Widget _buildTeenageDream() { return Padding(padding: EdgeInsets.only(right: 9.h), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 1.v);}, itemCount: controller.searchResultTopModelObj.value.teenagedreamItemList.value.length, itemBuilder: (context, index) {TeenagedreamItemModel model = controller.searchResultTopModelObj.value.teenagedreamItemList.value[index]; return TeenagedreamItemWidget(model);}))); } 
/// Navigates to the songPlayScreen when the action is triggered.
onTapSongCard() { Get.toNamed(AppRoutes.songPlayScreen, ); } 
 }
