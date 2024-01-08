import '../stories_page/widgets/frame_item_widget.dart';
import '../stories_page/widgets/stories1_item_widget.dart';
import 'models/frame_item_model.dart';
import 'models/stories1_item_model.dart';
import 'notifier/stories_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_10_social___social_networking/core/app_export.dart';
import 'package:the_6_10_social___social_networking/widgets/app_bar/appbar_title_searchview.dart';
import 'package:the_6_10_social___social_networking/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_6_10_social___social_networking/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class StoriesPage extends ConsumerStatefulWidget {
  const StoriesPage({Key? key})
      : super(
          key: key,
        );

  @override
  StoriesPageState createState() => StoriesPageState();
}

class StoriesPageState extends ConsumerState<StoriesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 26.v),
          child: Column(
            children: [
              _buildStories(context),
              SizedBox(height: 21.v),
              _buildPost(context),
              SizedBox(height: 27.v),
              _buildEvents(context),
              SizedBox(height: 6.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Consumer(
        builder: (context, ref, _) {
          return AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 16.h),
            hintText: "lbl_search".tr,
            controller: ref.watch(storiesNotifier).searchController,
          );
        },
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgAdd,
          margin: EdgeInsets.fromLTRB(16.h, 5.v, 19.h, 5.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildStories(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_stories".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 20.v),
          SizedBox(
            height: 89.v,
            child: Consumer(
              builder: (context, ref, _) {
                return ListView.separated(
                  padding: EdgeInsets.only(right: 14.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 16.h,
                    );
                  },
                  itemCount: ref
                          .watch(storiesNotifier)
                          .storiesModelObj
                          ?.stories1ItemList
                          .length ??
                      0,
                  itemBuilder: (context, index) {
                    Stories1ItemModel model = ref
                            .watch(storiesNotifier)
                            .storiesModelObj
                            ?.stories1ItemList[index] ??
                        Stories1ItemModel();
                    return Stories1ItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPost(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse21,
                height: 50.adaptSize,
                width: 50.adaptSize,
                radius: BorderRadius.circular(
                  25.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 9.v,
                  bottom: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_rizal_reynaldhi".tr,
                      style: CustomTextStyles.titleMedium18,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "lbl_35_minutes_ago".tr,
                      style: CustomTextStyles.labelMediumBluegray100,
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgGrid,
                height: 6.v,
                width: 30.h,
                margin: EdgeInsets.symmetric(vertical: 22.v),
              ),
            ],
          ),
          SizedBox(height: 18.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 332.h,
              margin: EdgeInsets.only(right: 17.h),
              child: Text(
                "msg_most_people_never".tr,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyLargePrimary.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(right: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFavorite,
                  height: 17.v,
                  width: 19.h,
                  margin: EdgeInsets.only(
                    top: 5.v,
                    bottom: 3.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 6.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_2200".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgUser,
                  height: 18.v,
                  width: 19.h,
                  margin: EdgeInsets.only(
                    left: 29.h,
                    top: 4.v,
                    bottom: 3.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 7.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "lbl_800".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgSettingsPrimary,
                  height: 25.v,
                  width: 54.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEvents(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_events".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 16.v),
          Consumer(
            builder: (context, ref, _) {
              return ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 1.v,
                  );
                },
                itemCount: ref
                        .watch(storiesNotifier)
                        .storiesModelObj
                        ?.frameItemList
                        .length ??
                    0,
                itemBuilder: (context, index) {
                  FrameItemModel model = ref
                          .watch(storiesNotifier)
                          .storiesModelObj
                          ?.frameItemList[index] ??
                      FrameItemModel();
                  return FrameItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
