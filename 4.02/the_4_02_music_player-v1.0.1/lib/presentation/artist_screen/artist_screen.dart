import '../artist_screen/widgets/renaissance_item_widget.dart';
import 'controller/artist_controller.dart';
import 'models/renaissance_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_02_music_player/core/app_export.dart';
import 'package:the_4_02_music_player/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_02_music_player/widgets/app_bar/appbar_title.dart';
import 'package:the_4_02_music_player/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_4_02_music_player/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_02_music_player/widgets/custom_icon_button.dart';

class ArtistScreen extends GetWidget<ArtistController> {
  const ArtistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 28.v),
                child: Column(children: [
                  _buildRenaissance(),
                  SizedBox(height: 43.v),
                  _buildRenaissance1()
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 14.v, bottom: 13.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_renaissance".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.fromLTRB(24.h, 14.v, 24.h, 13.v))
        ]);
  }

  /// Section Widget
  Widget _buildRenaissance() {
    return Column(children: [
      CustomIconButton(
          height: 38.adaptSize,
          width: 38.adaptSize,
          padding: EdgeInsets.all(7.h),
          child: CustomImageView(imagePath: ImageConstant.imgBookmark)),
      SizedBox(height: 12.v),
      Text("lbl_renaissance".tr, style: theme.textTheme.headlineMedium),
      SizedBox(height: 6.v),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("lbl_843_tracks".tr, style: CustomTextStyles.bodyLargeBluegray400),
        Opacity(
            opacity: 0.648,
            child: Container(
                height: 3.adaptSize,
                width: 3.adaptSize,
                margin: EdgeInsets.only(left: 4.h, top: 9.v, bottom: 6.v),
                decoration: BoxDecoration(
                    color:
                        theme.colorScheme.onPrimaryContainer.withOpacity(0.58),
                    borderRadius: BorderRadius.circular(1.h)))),
        Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Text("lbl_23_albums".tr,
                style: CustomTextStyles.bodyLargeBluegray400))
      ])
    ]);
  }

  /// Section Widget
  Widget _buildRenaissance1() {
    return SizedBox(
        height: 230.v,
        child: Obx(() => ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 24.h);
            },
            itemCount: controller
                .artistModelObj.value.renaissanceItemList.value.length,
            itemBuilder: (context, index) {
              RenaissanceItemModel model = controller
                  .artistModelObj.value.renaissanceItemList.value[index];
              return RenaissanceItemWidget(model, onTapUrgentSiege: () {
                onTapUrgentSiege();
              });
            })));
  }

  /// Navigates to the albumsScreen when the action is triggered.
  onTapUrgentSiege() {
    Get.toNamed(AppRoutes.albumsScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
