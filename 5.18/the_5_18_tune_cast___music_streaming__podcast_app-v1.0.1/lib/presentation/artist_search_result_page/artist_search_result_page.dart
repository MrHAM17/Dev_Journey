import '../artist_search_result_page/widgets/artistsearchresult_item_widget.dart';import 'models/artist_search_result_model.dart';import 'models/artistsearchresult_item_model.dart';import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'provider/artist_search_result_provider.dart';class ArtistSearchResultPage extends StatefulWidget {const ArtistSearchResultPage({Key? key}) : super(key: key);

@override ArtistSearchResultPageState createState() =>  ArtistSearchResultPageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => ArtistSearchResultProvider(), child: ArtistSearchResultPage()); } 
 }
class ArtistSearchResultPageState extends State<ArtistSearchResultPage> with  AutomaticKeepAliveClientMixin<ArtistSearchResultPage> {@override bool get wantKeepAlive =>  true;

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 44.v), _buildArtistSearchResult(context)])))); } 
/// Section Widget
Widget _buildArtistSearchResult(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Consumer<ArtistSearchResultProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: provider.artistSearchResultModelObj.artistsearchresultItemList.length, itemBuilder: (context, index) {ArtistsearchresultItemModel model = provider.artistSearchResultModelObj.artistsearchresultItemList[index]; return ArtistsearchresultItemWidget(model, onTapArtist: () {onTapArtist(context);});});})); } 
/// Navigates to the artistDetailsScreen when the action is triggered.
onTapArtist(BuildContext context) { NavigatorService.pushNamed(AppRoutes.artistDetailsScreen, ); } 
 }
