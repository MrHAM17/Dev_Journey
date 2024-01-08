import '../artist_search_result_page/widgets/artistsearchresult_item_widget.dart';import 'package:flutter/material.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';class ArtistSearchResultPage extends StatefulWidget {const ArtistSearchResultPage({Key? key}) : super(key: key);

@override ArtistSearchResultPageState createState() =>  ArtistSearchResultPageState();

 }
class ArtistSearchResultPageState extends State<ArtistSearchResultPage> with  AutomaticKeepAliveClientMixin<ArtistSearchResultPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 44.v), _buildArtistSearchResult(context)])))); } 
/// Section Widget
Widget _buildArtistSearchResult(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: 5, itemBuilder: (context, index) {return ArtistsearchresultItemWidget(onTapArtist: () {onTapArtist(context);});})); } 
/// Navigates to the artistDetailsScreen when the action is triggered.
onTapArtist(BuildContext context) { Navigator.pushNamed(context, AppRoutes.artistDetailsScreen); } 
 }
