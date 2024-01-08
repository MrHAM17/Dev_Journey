import '../history_music_page/widgets/historymusic_item_widget.dart';import 'models/history_music_model.dart';import 'models/historymusic_item_model.dart';import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'provider/history_music_provider.dart';class HistoryMusicPage extends StatefulWidget {const HistoryMusicPage({Key? key}) : super(key: key);

@override HistoryMusicPageState createState() =>  HistoryMusicPageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => HistoryMusicProvider(), child: HistoryMusicPage()); } 
 }
class HistoryMusicPageState extends State<HistoryMusicPage> with  AutomaticKeepAliveClientMixin<HistoryMusicPage> {@override bool get wantKeepAlive =>  true;

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 30.v), _buildHistoryMusic(context)])))); } 
/// Section Widget
Widget _buildHistoryMusic(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Consumer<HistoryMusicProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: provider.historyMusicModelObj.historymusicItemList.length, itemBuilder: (context, index) {HistorymusicItemModel model = provider.historyMusicModelObj.historymusicItemList[index]; return HistorymusicItemWidget(model, onTapSongCard: () {onTapSongCard(context);});});})); } 
/// Navigates to the songPlayScreen when the action is triggered.
onTapSongCard(BuildContext context) { NavigatorService.pushNamed(AppRoutes.songPlayScreen, ); } 
 }
