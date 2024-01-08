import '../playback_screen/widgets/playback_item_widget.dart';import 'models/playback_item_model.dart';import 'notifier/playback_notifier.dart';import 'package:flutter/material.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_title.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';class PlaybackScreen extends ConsumerStatefulWidget {const PlaybackScreen({Key? key}) : super(key: key);

@override PlaybackScreenState createState() =>  PlaybackScreenState();

 }
class PlaybackScreenState extends ConsumerState<PlaybackScreen> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 29.v), child: _buildPlayback(context))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v)), title: AppbarTitle(text: "lbl_playback".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildPlayback(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Consumer(builder: (context, ref, _) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 25.v);}, itemCount: ref.watch(playbackNotifier).playbackModelObj?.playbackItemList.length ?? 0, itemBuilder: (context, index) {PlaybackItemModel model = ref.watch(playbackNotifier).playbackModelObj?.playbackItemList[index] ?? PlaybackItemModel(); return PlaybackItemWidget(model, changeSwitchBox1: (value) {ref.read(playbackNotifier.notifier).changeSwitchBox1(index, value);});});})); } 
 }
