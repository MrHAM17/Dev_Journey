import '../artist_search_result_page/widgets/artistsearchresult_item_widget.dart';import 'controller/artist_search_result_controller.dart';import 'models/artist_search_result_model.dart';import 'models/artistsearchresult_item_model.dart';import 'package:flutter/material.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
// ignore_for_file: must_be_immutable
class ArtistSearchResultPage extends StatelessWidget {ArtistSearchResultPage({Key? key}) : super(key: key);

ArtistSearchResultController controller = Get.put(ArtistSearchResultController(ArtistSearchResultModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 44.v), _buildArtistSearchResult()])))); } 
/// Section Widget
Widget _buildArtistSearchResult() { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: controller.artistSearchResultModelObj.value.artistsearchresultItemList.value.length, itemBuilder: (context, index) {ArtistsearchresultItemModel model = controller.artistSearchResultModelObj.value.artistsearchresultItemList.value[index]; return ArtistsearchresultItemWidget(model, onTapArtist: () {onTapArtist();});}))); } 
/// Navigates to the artistDetailsScreen when the action is triggered.
onTapArtist() { Get.toNamed(AppRoutes.artistDetailsScreen, ); } 
 }
