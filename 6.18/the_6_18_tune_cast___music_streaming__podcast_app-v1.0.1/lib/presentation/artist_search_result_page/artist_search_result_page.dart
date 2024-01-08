import '../artist_search_result_page/widgets/artistsearchresult_item_widget.dart';import 'models/artistsearchresult_item_model.dart';import 'notifier/artist_search_result_notifier.dart';import 'package:flutter/material.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';class ArtistSearchResultPage extends ConsumerStatefulWidget {const ArtistSearchResultPage({Key? key}) : super(key: key);

@override ArtistSearchResultPageState createState() =>  ArtistSearchResultPageState();

 }
class ArtistSearchResultPageState extends ConsumerState<ArtistSearchResultPage> with  AutomaticKeepAliveClientMixin<ArtistSearchResultPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 44.v), _buildArtistSearchResult(context)])))); } 
/// Section Widget
Widget _buildArtistSearchResult(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Consumer(builder: (context, ref, _) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: ref.watch(artistSearchResultNotifier).artistSearchResultModelObj?.artistsearchresultItemList.length ?? 0, itemBuilder: (context, index) {ArtistsearchresultItemModel model = ref.watch(artistSearchResultNotifier).artistSearchResultModelObj?.artistsearchresultItemList[index] ?? ArtistsearchresultItemModel(); return ArtistsearchresultItemWidget(model, onTapArtist: () {onTapArtist(context);});});})); } 
/// Navigates to the artistDetailsScreen when the action is triggered.
onTapArtist(BuildContext context) { NavigatorService.pushNamed(AppRoutes.artistDetailsScreen, ); } 
 }
