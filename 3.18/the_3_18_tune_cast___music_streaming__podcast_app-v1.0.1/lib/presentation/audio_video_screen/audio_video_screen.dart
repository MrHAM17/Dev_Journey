import 'bloc/audio_video_bloc.dart';import 'models/audio_video_model.dart';import 'package:flutter/material.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_title.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/custom_switch.dart';class AudioVideoScreen extends StatelessWidget {const AudioVideoScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<AudioVideoBloc>(create: (context) => AudioVideoBloc(AudioVideoState(audioVideoModelObj: AudioVideoModel()))..add(AudioVideoInitialEvent()), child: AudioVideoScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 33.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("lbl_audio_quality".tr, style: theme.textTheme.titleLarge)), SizedBox(height: 32.v), _buildAutoLayoutHorizontal(context, dataCellularStreaming: "lbl_wi_fi_streaming".tr, automatic: "lbl_high".tr), SizedBox(height: 32.v), _buildAutoLayoutHorizontal(context, dataCellularStreaming: "msg_data_cellular_streaming".tr, automatic: "lbl_automatic".tr), SizedBox(height: 32.v), _buildAutoLayoutHorizontal3(context), SizedBox(height: 32.v), _buildAutoLayoutHorizontal(context, dataCellularStreaming: "lbl_download".tr, automatic: "lbl_normal".tr), SizedBox(height: 34.v), _buildAutoLayoutHorizontal5(context), SizedBox(height: 34.v), _buildAutoLayoutHorizontal6(context), SizedBox(height: 33.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_video_quality".tr, style: theme.textTheme.titleLarge)), SizedBox(height: 32.v), _buildAutoLayoutHorizontal(context, dataCellularStreaming: "lbl_wi_fi_streaming".tr, automatic: "lbl_high".tr), SizedBox(height: 32.v), _buildAutoLayoutHorizontal(context, dataCellularStreaming: "msg_data_cellular_streaming".tr, automatic: "lbl_medium".tr), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 48.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 9.v)), title: AppbarTitle(text: "lbl_audio_video".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal3(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 3.v), child: Text("msg_auto_adjust_quality".tr, style: CustomTextStyles.titleMediumSemiBold_1)), BlocSelector<AudioVideoBloc, AudioVideoState, bool?>(selector: (state) => state.isSelectedSwitch, builder: (context, isSelectedSwitch) {return CustomSwitch(value: isSelectedSwitch, onChange: (value) {context.read<AudioVideoBloc>().add(ChangeSwitchEvent(value: value));});})]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal5(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(top: 3.v), child: Text("msg_download_only_using".tr, style: CustomTextStyles.titleMediumSemiBold_1)), BlocSelector<AudioVideoBloc, AudioVideoState, bool?>(selector: (state) => state.isSelectedSwitch1, builder: (context, isSelectedSwitch1) {return CustomSwitch(margin: EdgeInsets.only(left: 41.h), value: isSelectedSwitch1, onChange: (value) {context.read<AudioVideoBloc>().add(ChangeSwitch1Event(value: value));});})]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal6(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("lbl_equalizer".tr, style: CustomTextStyles.titleMediumSemiBold_1)), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(bottom: 3.v))]); } 
/// Common widget
Widget _buildAutoLayoutHorizontal(BuildContext context, {required String dataCellularStreaming, required String automatic, }) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text(dataCellularStreaming, style: CustomTextStyles.titleMediumSemiBold_1.copyWith(color: appTheme.gray90001)), Spacer(), Text(automatic, style: CustomTextStyles.titleMediumSemiBold_1.copyWith(color: appTheme.gray90001)), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 20.h, bottom: 3.v))]); } 
 }