import '../history_music_page/widgets/historymusic_item_widget.dart';import 'package:flutter/material.dart';import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';class HistoryMusicPage extends StatefulWidget {const HistoryMusicPage({Key? key}) : super(key: key);

@override HistoryMusicPageState createState() =>  HistoryMusicPageState();

 }
class HistoryMusicPageState extends State<HistoryMusicPage> with  AutomaticKeepAliveClientMixin<HistoryMusicPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 30.v), _buildHistoryMusic(context)])))); } 
/// Section Widget
Widget _buildHistoryMusic(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: 5, itemBuilder: (context, index) {return HistorymusicItemWidget(onTapSongCard: () {onTapSongCard(context);});})); } 
/// Navigates to the songPlayScreen when the action is triggered.
onTapSongCard(BuildContext context) { Navigator.pushNamed(context, AppRoutes.songPlayScreen); } 
 }
