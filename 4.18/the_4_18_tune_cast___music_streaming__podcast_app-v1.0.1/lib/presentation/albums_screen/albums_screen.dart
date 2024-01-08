import '../albums_screen/widgets/albums_item_widget.dart';import 'controller/albums_controller.dart';import 'models/albums_item_model.dart';import 'package:flutter/material.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_title.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_trailing_iconbutton_one.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_trailing_image.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';class AlbumsScreen extends GetWidget<AlbumsController> {const AlbumsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 31.v), child: Column(children: [_buildAutoLayoutHorizontal(), SizedBox(height: 22.v), Divider(), SizedBox(height: 23.v), _buildAlbums()])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 11.v)), title: AppbarTitle(text: "lbl_albums".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgRewind, margin: EdgeInsets.only(left: 24.h, top: 11.v, right: 11.h)), AppbarTrailingIconbuttonOne(imagePath: ImageConstant.imgSettingsGray90001, margin: EdgeInsets.only(left: 20.h, top: 11.v, right: 35.h))]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal() { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("lbl_sort_by".tr, style: theme.textTheme.titleLarge), Spacer(), Text("lbl_recently_added".tr, style: CustomTextStyles.titleMediumOnPrimaryContainer16), CustomImageView(imagePath: ImageConstant.imgIconlyCurvedSwap, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 12.h, bottom: 4.v))]); } 
/// Section Widget
Widget _buildAlbums() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: controller.albumsModelObj.value.albumsItemList.value.length, itemBuilder: (context, index) {AlbumsItemModel model = controller.albumsModelObj.value.albumsItemList.value[index]; return AlbumsItemWidget(model);})); } 
 }
