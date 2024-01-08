import 'bloc/data_saver_storage_bloc.dart';import 'models/data_saver_storage_model.dart';import 'package:flutter/material.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_title.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/custom_switch.dart';class DataSaverStorageScreen extends StatelessWidget {const DataSaverStorageScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<DataSaverStorageBloc>(create: (context) => DataSaverStorageBloc(DataSaverStorageState(dataSaverStorageModelObj: DataSaverStorageModel()))..add(DataSaverStorageInitialEvent()), child: DataSaverStorageScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 27.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("lbl_data_saver".tr, style: theme.textTheme.titleLarge)), SizedBox(height: 27.v), _buildAudioQuality(context), SizedBox(height: 21.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_podcasts".tr, style: theme.textTheme.titleLarge)), SizedBox(height: 27.v), _buildDownloadAudioOnly(context), SizedBox(height: 27.v), _buildStreamAudioOnly(context), SizedBox(height: 24.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_storage".tr, style: theme.textTheme.titleLarge)), SizedBox(height: 23.v), _buildAutoLayoutHorizontal(context, cache: "lbl_other_apps".tr, filesize: "lbl_75_4_gb".tr), SizedBox(height: 24.v), _buildAutoLayoutHorizontal(context, cache: "lbl_cache".tr, filesize: "lbl_120_6_mb".tr), SizedBox(height: 27.v), _buildAutoLayoutHorizontal(context, cache: "lbl_free_space".tr, filesize: "lbl_50_5_gb".tr), SizedBox(height: 24.v), _buildAutoLayoutHorizontal4(context), SizedBox(height: 23.v), _buildAutoLayoutHorizontal5(context), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v)), title: AppbarTitle(text: "msg_data_saver_storage".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildAudioQuality(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_audio_quality".tr, style: CustomTextStyles.titleMediumSemiBold_1), SizedBox(height: 4.v), SizedBox(width: 251.h, child: Text("msg_sets_your_audio".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleSmallMedium.copyWith(height: 1.40)))]), BlocSelector<DataSaverStorageBloc, DataSaverStorageState, bool?>(selector: (state) => state.isSelectedSwitch, builder: (context, isSelectedSwitch) {return CustomSwitch(margin: EdgeInsets.only(top: 19.v, bottom: 24.v), value: isSelectedSwitch, onChange: (value) {context.read<DataSaverStorageBloc>().add(ChangeSwitchEvent(value: value));});})]); } 
/// Section Widget
Widget _buildDownloadAudioOnly(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_download_audio_only".tr, style: CustomTextStyles.titleMediumSemiBold_1), SizedBox(height: 6.v), Text("msg_save_video_podcasts".tr, style: CustomTextStyles.titleSmallMedium)]), BlocSelector<DataSaverStorageBloc, DataSaverStorageState, bool?>(selector: (state) => state.isSelectedSwitch1, builder: (context, isSelectedSwitch1) {return CustomSwitch(margin: EdgeInsets.only(top: 9.v, bottom: 12.v), value: isSelectedSwitch1, onChange: (value) {context.read<DataSaverStorageBloc>().add(ChangeSwitch1Event(value: value));});})]); } 
/// Section Widget
Widget _buildStreamAudioOnly(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_stream_audio_only".tr, style: CustomTextStyles.titleMediumSemiBold_1), SizedBox(height: 4.v), SizedBox(width: 252.h, child: Text("msg_play_video_podcasts".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleSmallMedium.copyWith(height: 1.40)))]), BlocSelector<DataSaverStorageBloc, DataSaverStorageState, bool?>(selector: (state) => state.isSelectedSwitch2, builder: (context, isSelectedSwitch2) {return CustomSwitch(margin: EdgeInsets.only(top: 19.v, bottom: 24.v), value: isSelectedSwitch2, onChange: (value) {context.read<DataSaverStorageBloc>().add(ChangeSwitch2Event(value: value));});})]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal4(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_remove_all_downloads".tr, style: CustomTextStyles.titleMediumSemiBold_1), SizedBox(height: 6.v), SizedBox(width: 278.h, child: Text("msg_remove_all_of_the".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleSmallMedium.copyWith(height: 1.40)))])), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 81.h, top: 23.v, bottom: 26.v))]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal5(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_clear_cache".tr, style: CustomTextStyles.titleMediumSemiBold_1), SizedBox(height: 6.v), SizedBox(width: 245.h, child: Text("msg_free_up_storage".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleSmallMedium.copyWith(height: 1.40)))]), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(top: 23.v, bottom: 26.v))]); } 
/// Common widget
Widget _buildAutoLayoutHorizontal(BuildContext context, {required String cache, required String filesize, }) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text(cache, style: CustomTextStyles.titleMediumSemiBold_1.copyWith(color: appTheme.gray90001)), Spacer(), Text(filesize, style: CustomTextStyles.titleMediumSemiBold_1.copyWith(color: appTheme.gray90001)), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 20.h))]); } 
 }
