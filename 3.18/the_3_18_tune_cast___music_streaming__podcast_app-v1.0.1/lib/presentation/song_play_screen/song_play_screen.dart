import 'bloc/song_play_bloc.dart';import 'models/song_play_model.dart';import 'package:flutter/material.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/custom_icon_button.dart';class SongPlayScreen extends StatelessWidget {const SongPlayScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<SongPlayBloc>(create: (context) => SongPlayBloc(SongPlayState(songPlayModelObj: SongPlayModel()))..add(SongPlayInitialEvent()), child: SongPlayScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<SongPlayBloc, SongPlayState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 30.v), child: Padding(padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 5.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgImage380x380, height: 380.adaptSize, width: 380.adaptSize, radius: BorderRadius.circular(40.h)), SizedBox(height: 22.v), Text("lbl_starboy".tr, style: theme.textTheme.headlineLarge), SizedBox(height: 10.v), Text("msg_the_weeknd_daft".tr, style: CustomTextStyles.titleMediumPrimarySemiBold_1), SizedBox(height: 21.v), Divider(), SizedBox(height: 19.v), SliderTheme(data: SliderThemeData(trackShape: RoundedRectSliderTrackShape(), inactiveTrackColor: theme.colorScheme.primaryContainer, thumbShape: RoundSliderThumbShape()), child: Slider(value: 80.16, min: 0.0, max: 100.0, onChanged: (value) {})), SizedBox(height: 5.v), _buildAutoLayoutHorizontal(context), SizedBox(height: 23.v), Padding(padding: EdgeInsets.symmetric(horizontal: 26.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgRefresh, height: 18.v, width: 22.h, margin: EdgeInsets.only(top: 24.v, bottom: 23.v)), CustomImageView(imagePath: ImageConstant.imgUserGray90001, height: 27.v, width: 24.h, margin: EdgeInsets.only(top: 20.v, bottom: 18.v)), CustomIconButton(height: 66.adaptSize, width: 66.adaptSize, child: CustomImageView()), CustomImageView(imagePath: ImageConstant.imgClock, height: 27.v, width: 24.h, margin: EdgeInsets.only(top: 20.v, bottom: 18.v)), CustomImageView(imagePath: ImageConstant.imgUserGray9000118x22, height: 18.v, width: 22.h, margin: EdgeInsets.only(top: 24.v, bottom: 23.v))])), SizedBox(height: 22.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgCategoriesSpeed, height: 28.adaptSize, width: 28.adaptSize), CustomImageView(imagePath: ImageConstant.imgCategoriesTimer, height: 28.adaptSize, width: 28.adaptSize), CustomImageView(imagePath: ImageConstant.imgSettings, height: 28.adaptSize, width: 28.adaptSize), CustomImageView(imagePath: ImageConstant.imgCategoriesMore, height: 28.adaptSize, width: 28.adaptSize)])), SizedBox(height: 40.v), CustomImageView(imagePath: ImageConstant.imgArrowUp, height: 24.adaptSize, width: 24.adaptSize), SizedBox(height: 7.v), Text("lbl_lyrics".tr, style: theme.textTheme.titleMedium)]))))));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 11.v)), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgSettingsGray90001, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v))]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_03_35".tr, style: CustomTextStyles.titleMediumMedium16), Text("lbl_03_50".tr, style: CustomTextStyles.titleMediumMedium16)]); } 
 }
