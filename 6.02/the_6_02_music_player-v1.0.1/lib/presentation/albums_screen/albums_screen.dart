import '../albums_screen/widgets/albums_item_widget.dart';
import 'models/albums_item_model.dart';
import 'notifier/albums_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_02_music_player/core/app_export.dart';
import 'package:the_6_02_music_player/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_6_02_music_player/widgets/app_bar/appbar_title.dart';
import 'package:the_6_02_music_player/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_6_02_music_player/widgets/app_bar/custom_app_bar.dart';

class AlbumsScreen extends ConsumerStatefulWidget {
  const AlbumsScreen({Key? key}) : super(key: key);

  @override
  AlbumsScreenState createState() => AlbumsScreenState();
}

class AlbumsScreenState extends ConsumerState<AlbumsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 24.h, top: 22.v, right: 24.h),
                child: Consumer(builder: (context, ref, _) {
                  return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 16.v);
                      },
                      itemCount: ref
                              .watch(albumsNotifier)
                              .albumsModelObj
                              ?.albumsItemList
                              .length ??
                          0,
                      itemBuilder: (context, index) {
                        AlbumsItemModel model = ref
                                .watch(albumsNotifier)
                                .albumsModelObj
                                ?.albumsItemList[index] ??
                            AlbumsItemModel();
                        return AlbumsItemWidget(model, onTapAlbum: () {
                          onTapAlbum(context);
                        });
                      });
                }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 14.v, bottom: 13.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_albums".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.fromLTRB(24.h, 14.v, 24.h, 13.v))
        ]);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapAlbum(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.loginScreen);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
