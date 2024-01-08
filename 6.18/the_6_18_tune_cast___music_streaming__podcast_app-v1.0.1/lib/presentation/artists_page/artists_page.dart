import '../artists_page/widgets/artists1_item_widget.dart';
import 'models/artists1_item_model.dart';
import 'notifier/artists_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ArtistsPage extends ConsumerStatefulWidget {
  const ArtistsPage({Key? key})
      : super(
          key: key,
        );

  @override
  ArtistsPageState createState() => ArtistsPageState();
}

class ArtistsPageState extends ConsumerState<ArtistsPage>
    with AutomaticKeepAliveClientMixin<ArtistsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 32.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    children: [
                      _buildAutoLayoutHorizontal(context),
                      SizedBox(height: 22.v),
                      Divider(),
                      SizedBox(height: 29.v),
                      _buildArtists(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "lbl_sort_by".tr,
          style: theme.textTheme.titleLarge,
        ),
        Spacer(),
        Text(
          "msg_recently_downloaded".tr,
          style: CustomTextStyles.titleMediumOnPrimaryContainer16,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgIconlyCurvedSwap,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(
            left: 12.h,
            bottom: 4.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildArtists(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 24.v,
            );
          },
          itemCount: ref
                  .watch(artistsNotifier)
                  .artistsModelObj
                  ?.artists1ItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            Artists1ItemModel model = ref
                    .watch(artistsNotifier)
                    .artistsModelObj
                    ?.artists1ItemList[index] ??
                Artists1ItemModel();
            return Artists1ItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
