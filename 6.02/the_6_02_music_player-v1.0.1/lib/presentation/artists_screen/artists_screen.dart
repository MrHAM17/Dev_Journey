import '../artists_screen/widgets/artist_item_widget.dart';
import 'models/artist_item_model.dart';
import 'notifier/artists_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_02_music_player/core/app_export.dart';
import 'package:the_6_02_music_player/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_6_02_music_player/widgets/app_bar/appbar_title.dart';
import 'package:the_6_02_music_player/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_6_02_music_player/widgets/app_bar/custom_app_bar.dart';

class ArtistsScreen extends ConsumerStatefulWidget {
  const ArtistsScreen({Key? key}) : super(key: key);

  @override
  ArtistsScreenState createState() => ArtistsScreenState();
}

class ArtistsScreenState extends ConsumerState<ArtistsScreen> {
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
                              .watch(artistsNotifier)
                              .artistsModelObj
                              ?.artistItemList
                              .length ??
                          0,
                      itemBuilder: (context, index) {
                        ArtistItemModel model = ref
                                .watch(artistsNotifier)
                                .artistsModelObj
                                ?.artistItemList[index] ??
                            ArtistItemModel();
                        return ArtistItemWidget(model);
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
        title: AppbarTitle(text: "lbl_artists".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.fromLTRB(24.h, 14.v, 24.h, 13.v))
        ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
