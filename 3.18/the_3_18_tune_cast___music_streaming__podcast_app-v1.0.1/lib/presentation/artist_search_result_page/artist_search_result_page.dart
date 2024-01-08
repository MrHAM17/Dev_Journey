import '../artist_search_result_page/widgets/artistsearchresult_item_widget.dart';import 'bloc/artist_search_result_bloc.dart';import 'models/artist_search_result_model.dart';import 'models/artistsearchresult_item_model.dart';import 'package:flutter/material.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';class ArtistSearchResultPage extends StatefulWidget {const ArtistSearchResultPage({Key? key}) : super(key: key);

@override ArtistSearchResultPageState createState() =>  ArtistSearchResultPageState();

static Widget builder(BuildContext context) { return BlocProvider<ArtistSearchResultBloc>(create: (context) => ArtistSearchResultBloc(ArtistSearchResultState(artistSearchResultModelObj: ArtistSearchResultModel()))..add(ArtistSearchResultInitialEvent()), child: ArtistSearchResultPage()); } 
 }
class ArtistSearchResultPageState extends State<ArtistSearchResultPage> with  AutomaticKeepAliveClientMixin<ArtistSearchResultPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 44.v), _buildArtistSearchResult(context)])))); } 
/// Section Widget
Widget _buildArtistSearchResult(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: BlocSelector<ArtistSearchResultBloc, ArtistSearchResultState, ArtistSearchResultModel?>(selector: (state) => state.artistSearchResultModelObj, builder: (context, artistSearchResultModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: artistSearchResultModelObj?.artistsearchresultItemList.length ?? 0, itemBuilder: (context, index) {ArtistsearchresultItemModel model = artistSearchResultModelObj?.artistsearchresultItemList[index] ?? ArtistsearchresultItemModel(); return ArtistsearchresultItemWidget(model, onTapArtist: () {onTapArtist(context);});});})); } 
/// Navigates to the artistDetailsScreen when the action is triggered.
onTapArtist(BuildContext context) { NavigatorService.pushNamed(AppRoutes.artistDetailsScreen, ); } 
 }
