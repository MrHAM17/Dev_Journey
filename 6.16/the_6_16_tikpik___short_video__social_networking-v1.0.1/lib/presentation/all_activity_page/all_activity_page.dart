import '../all_activity_page/widgets/followback1_item_widget.dart';
import '../all_activity_page/widgets/followback_item_widget.dart';
import 'models/all_activity_model.dart';
import 'models/followback1_item_model.dart';
import 'models/followback_item_model.dart';
import 'notifier/all_activity_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title_dropdown.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class AllActivityPage extends ConsumerStatefulWidget {
  const AllActivityPage({Key? key})
      : super(
          key: key,
        );

  @override
  AllActivityPageState createState() => AllActivityPageState();
}

class AllActivityPageState extends ConsumerState<AllActivityPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 33.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_today".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 22.v),
              _buildFollowBack(context),
              SizedBox(height: 26.v),
              _buildFollowBack1(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 49.v,
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgFrame2,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 8.v,
          bottom: 9.v,
        ),
      ),
      centerTitle: true,
      title: Consumer(
        builder: (context, ref, _) {
          return AppbarTitleDropdown(
            hintText: "lbl_all_activity".tr,
            items: ref
                    .watch(allActivityNotifier)
                    .allActivityModelObj
                    ?.dropdownItemList ??
                [],
            onTap: (value) {
              ref.watch(allActivityNotifier).onSelected(value);
            },
          );
        },
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIconlyCurvedSend,
          margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 11.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFollowBack(BuildContext context) {
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
                  .watch(allActivityNotifier)
                  .allActivityModelObj
                  ?.followbackItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            FollowbackItemModel model = ref
                    .watch(allActivityNotifier)
                    .allActivityModelObj
                    ?.followbackItemList[index] ??
                FollowbackItemModel();
            return FollowbackItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFollowBack1(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_yesterday".tr,
          style: theme.textTheme.titleLarge,
        ),
        SizedBox(height: 22.v),
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
                  height: 24.v,
                );
              },
              itemCount: ref
                      .watch(allActivityNotifier)
                      .allActivityModelObj
                      ?.followback1ItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                Followback1ItemModel model = ref
                        .watch(allActivityNotifier)
                        .allActivityModelObj
                        ?.followback1ItemList[index] ??
                    Followback1ItemModel();
                return Followback1ItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ],
    );
  }
}
