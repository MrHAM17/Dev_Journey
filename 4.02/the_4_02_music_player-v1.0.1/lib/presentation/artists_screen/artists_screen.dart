import '../artists_screen/widgets/artist_item_widget.dart';
import 'controller/artists_controller.dart';
import 'models/artist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_02_music_player/core/app_export.dart';
import 'package:the_4_02_music_player/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_02_music_player/widgets/app_bar/appbar_title.dart';
import 'package:the_4_02_music_player/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_4_02_music_player/widgets/app_bar/custom_app_bar.dart';

class ArtistsScreen extends GetWidget<ArtistsController> {
  const ArtistsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Padding(
                padding: EdgeInsets.only(left: 24.h, top: 22.v, right: 24.h),
                child: Obx(() => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 16.v);
                    },
                    itemCount: controller
                        .artistsModelObj.value.artistItemList.value.length,
                    itemBuilder: (context, index) {
                      ArtistItemModel model = controller
                          .artistsModelObj.value.artistItemList.value[index];
                      return ArtistItemWidget(model);
                    })))));
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
        title: AppbarTitle(text: "lbl_artists".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.fromLTRB(24.h, 14.v, 24.h, 13.v))
        ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
