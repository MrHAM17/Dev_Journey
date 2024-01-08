import '../top_playlists_page/widgets/topplaylist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_02_music_player/core/app_export.dart';
import 'package:the_7_02_music_player/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_7_02_music_player/widgets/app_bar/appbar_title.dart';
import 'package:the_7_02_music_player/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_7_02_music_player/widgets/app_bar/custom_app_bar.dart';

class TopPlaylistsPage extends StatelessWidget {
  const TopPlaylistsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 24.h, top: 20.v, right: 24.h),
                child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 24.v);
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return TopplaylistItemWidget(onTapImgRenaissance: () {
                        onTapImgRenaissance(context);
                      });
                    }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 53.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 14.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Top Playlists"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.fromLTRB(24.h, 14.v, 24.h, 15.v))
        ]);
  }

  /// Navigates to the listScreen when the action is triggered.
  onTapImgRenaissance(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.listScreen);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
