import '../home_page/widgets/newreleaseslist_item_widget.dart';
import 'models/newreleaseslist_item_model.dart';
import 'notifier/home_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_02_music_player/core/app_export.dart';
import 'package:the_6_02_music_player/widgets/app_bar/appbar_title.dart';
import 'package:the_6_02_music_player/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_6_02_music_player/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_02_music_player/widgets/custom_elevated_button.dart';
import 'package:the_6_02_music_player/presentation/playlist_bottomsheet/playlist_bottomsheet.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 26.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 24.h, right: 24.h, bottom: 5.v),
                        child: Column(children: [
                          Container(
                              width: 243.h,
                              margin: EdgeInsets.only(left: 49.h, right: 50.h),
                              child: Text("msg_listen_to_music_without".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.headlineMedium!
                                      .copyWith(height: 1.50))),
                          SizedBox(height: 26.v),
                          CustomElevatedButton(
                              height: 40.v,
                              width: 236.h,
                              text: "lbl_trial_version".tr,
                              buttonStyle:
                                  CustomButtonStyles.fillOnPrimaryContainerTL20,
                              buttonTextStyle:
                                  CustomTextStyles.bodyLargeBlack900),
                          SizedBox(height: 41.v),
                          Text("msg_free_for_3_months".tr,
                              style: CustomTextStyles
                                  .bodyMediumOnPrimaryContainer),
                          SizedBox(height: 44.v),
                          _buildNewReleases(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarTitle(text: "lbl_dashboard".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.fromLTRB(24.h, 14.v, 24.h, 13.v))
        ]);
  }

  /// Section Widget
  Widget _buildNewReleasesList(BuildContext context) {
    return SizedBox(
        height: 230.v,
        child: Consumer(builder: (context, ref, _) {
          return ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 24.h);
              },
              itemCount: ref
                      .watch(homeNotifier)
                      .homeModelObj
                      ?.newreleaseslistItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                NewreleaseslistItemModel model = ref
                        .watch(homeNotifier)
                        .homeModelObj
                        ?.newreleaseslistItemList[index] ??
                    NewreleaseslistItemModel();
                return NewreleaseslistItemWidget(model);
              });
        }));
  }

  /// Section Widget
  Widget _buildNewReleases(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text("lbl_new_releases".tr, style: theme.textTheme.headlineSmall),
        GestureDetector(
            onTap: () {
              onTapTxtViewAll(context);
            },
            child: Padding(
                padding: EdgeInsets.only(top: 5.v, bottom: 6.v),
                child: Text("lbl_view_all".tr,
                    style: CustomTextStyles.bodyMediumOnPrimaryContainer)))
      ]),
      SizedBox(height: 20.v),
      _buildNewReleasesList(context)
    ]);
  }

  /// Shows a modal bottom sheet with [PlaylistBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapTxtViewAll(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => PlaylistBottomsheet(),
        isScrollControlled: true);
  }
}
