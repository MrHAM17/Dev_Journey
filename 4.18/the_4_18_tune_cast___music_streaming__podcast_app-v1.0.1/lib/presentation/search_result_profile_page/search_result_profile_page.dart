import '../search_result_profile_page/widgets/following_item_widget.dart';import '../search_result_profile_page/widgets/fortyfive_item_widget.dart';import 'controller/search_result_profile_controller.dart';import 'models/following_item_model.dart';import 'models/fortyfive_item_model.dart';import 'models/search_result_profile_model.dart';import 'package:flutter/material.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
// ignore_for_file: must_be_immutable
class SearchResultProfilePage extends StatelessWidget {SearchResultProfilePage({Key? key}) : super(key: key);

SearchResultProfileController controller = Get.put(SearchResultProfileController(SearchResultProfileModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 24.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [_buildFortyFive(), SizedBox(height: 24.v), _buildFollowing()]))])))); } 
/// Section Widget
Widget _buildFortyFive() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: controller.searchResultProfileModelObj.value.fortyfiveItemList.value.length, itemBuilder: (context, index) {FortyfiveItemModel model = controller.searchResultProfileModelObj.value.fortyfiveItemList.value[index]; return FortyfiveItemWidget(model, onTapArtist: () {onTapArtist();});})); } 
/// Section Widget
Widget _buildFollowing() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 1.v);}, itemCount: controller.searchResultProfileModelObj.value.followingItemList.value.length, itemBuilder: (context, index) {FollowingItemModel model = controller.searchResultProfileModelObj.value.followingItemList.value[index]; return FollowingItemWidget(model, onTapArtist: () {onTapArtist();});})); } 
/// Navigates to the profileDetailsScreen when the action is triggered.
onTapArtist() { Get.toNamed(AppRoutes.profileDetailsScreen, ); } 
 }
