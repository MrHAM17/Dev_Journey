import 'controller/lyrics_controller.dart';import 'package:flutter/material.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';class LyricsScreen extends GetWidget<LyricsController> {const LyricsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 30.v), child: Padding(padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 5.v), child: Column(children: [_buildEleven(), SizedBox(height: 32.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_lyrics".tr, style: theme.textTheme.headlineSmall)), SizedBox(height: 20.v), Container(padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 25.v), decoration: AppDecoration.fillGray5001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder32), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 12.v), SizedBox(width: 314.h, child: RichText(text: TextSpan(children: [TextSpan(text: "msg_let_a_nigga_brag2".tr, style: CustomTextStyles.headlineSmallOnPrimaryContainer_1.copyWith(height: 1.83)), TextSpan(text: "msg_now_she_hit_the".tr, style: CustomTextStyles.headlineSmallPrimary_1.copyWith(height: 1.83))]), textAlign: TextAlign.left))]))])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 11.v)), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgSettingsGray90001, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v))]); } 
/// Section Widget
Widget _buildEleven() { return Column(children: [Column(children: [SliderTheme(data: SliderThemeData(trackShape: RoundedRectSliderTrackShape(), inactiveTrackColor: theme.colorScheme.primaryContainer, thumbShape: RoundSliderThumbShape()), child: Slider(value: 80.16, min: 0.0, max: 100.0, onChanged: (value) {})), SizedBox(height: 5.v), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_03_35".tr, style: CustomTextStyles.titleMediumMedium16), Text("lbl_03_50".tr, style: CustomTextStyles.titleMediumMedium16)]), SizedBox(height: 23.v), Padding(padding: EdgeInsets.symmetric(horizontal: 26.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgRefresh, height: 18.v, width: 22.h, margin: EdgeInsets.only(top: 24.v, bottom: 23.v)), CustomImageView(imagePath: ImageConstant.imgUserGray90001, height: 27.v, width: 24.h, margin: EdgeInsets.only(top: 20.v, bottom: 18.v)), CustomImageView(imagePath: ImageConstant.imgIconlyBoldPlay, height: 66.adaptSize, width: 66.adaptSize), CustomImageView(imagePath: ImageConstant.imgClock, height: 27.v, width: 24.h, margin: EdgeInsets.only(top: 20.v, bottom: 18.v)), CustomImageView(imagePath: ImageConstant.imgUserGray9000118x22, height: 18.v, width: 22.h, margin: EdgeInsets.only(top: 24.v, bottom: 23.v))]))]), SizedBox(height: 22.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgCategoriesSpeed, height: 28.adaptSize, width: 28.adaptSize), CustomImageView(imagePath: ImageConstant.imgCategoriesTimer, height: 28.adaptSize, width: 28.adaptSize), CustomImageView(imagePath: ImageConstant.imgSettings, height: 28.adaptSize, width: 28.adaptSize), CustomImageView(imagePath: ImageConstant.imgCategoriesMore, height: 28.adaptSize, width: 28.adaptSize)])), SizedBox(height: 30.v), Divider()]); } 
 }
