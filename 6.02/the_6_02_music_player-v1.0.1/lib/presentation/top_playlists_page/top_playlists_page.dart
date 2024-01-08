import '../top_playlists_page/widgets/topplaylist_item_widget.dart';
import 'models/topplaylist_item_model.dart';
import 'notifier/top_playlists_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_02_music_player/core/app_export.dart';
import 'package:the_6_02_music_player/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_6_02_music_player/widgets/app_bar/appbar_title.dart';
import 'package:the_6_02_music_player/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_6_02_music_player/widgets/app_bar/custom_app_bar.dart';

class TopPlaylistsPage extends ConsumerStatefulWidget {
  const TopPlaylistsPage({Key? key}) : super(key: key);

  @override
  TopPlaylistsPageState createState() => TopPlaylistsPageState();
}

class TopPlaylistsPageState extends ConsumerState<TopPlaylistsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 24.h, top: 20.v, right: 24.h),
                child: Consumer(builder: (context, ref, _) {
                  return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 24.v);
                      },
                      itemCount: ref
                              .watch(topPlaylistsNotifier)
                              .topPlaylistsModelObj
                              ?.topplaylistItemList
                              .length ??
                          0,
                      itemBuilder: (context, index) {
                        TopplaylistItemModel model = ref
                                .watch(topPlaylistsNotifier)
                                .topPlaylistsModelObj
                                ?.topplaylistItemList[index] ??
                            TopplaylistItemModel();
                        return TopplaylistItemWidget(model,
                            onTapImgRenaissance: () {
                          onTapImgRenaissance(context);
                        });
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
        title: AppbarTitle(text: "lbl_top_playlists".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.fromLTRB(24.h, 14.v, 24.h, 15.v))
        ]);
  }

  /// Navigates to the listScreen when the action is triggered.
  onTapImgRenaissance(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.listScreen);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
