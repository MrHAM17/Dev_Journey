import '../all_activity_page/widgets/followback1_item_widget.dart';
import '../all_activity_page/widgets/followback_item_widget.dart';
import 'models/all_activity_model.dart';
import 'models/followback1_item_model.dart';
import 'models/followback_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title_dropdown.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';
import 'provider/all_activity_provider.dart';

// ignore_for_file: must_be_immutable
class AllActivityPage extends StatefulWidget {
  const AllActivityPage({Key? key})
      : super(
          key: key,
        );

  @override
  AllActivityPageState createState() => AllActivityPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AllActivityProvider(),
      child: AllActivityPage(),
    );
  }
}

class AllActivityPageState extends State<AllActivityPage> {
  @override
  void initState() {
    super.initState();
  }

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
      title: Selector<AllActivityProvider, AllActivityModel?>(
        selector: (
          context,
          provider,
        ) =>
            provider.allActivityModelObj,
        builder: (context, allActivityModelObj, child) {
          return AppbarTitleDropdown(
            hintText: "lbl_all_activity".tr,
            items: allActivityModelObj?.dropdownItemList ?? [],
            onTap: (value) {
              context.read<AllActivityProvider>().onSelected(value);
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
    return Consumer<AllActivityProvider>(
      builder: (context, provider, child) {
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
          itemCount: provider.allActivityModelObj.followbackItemList.length,
          itemBuilder: (context, index) {
            FollowbackItemModel model =
                provider.allActivityModelObj.followbackItemList[index];
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
        Consumer<AllActivityProvider>(
          builder: (context, provider, child) {
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
              itemCount:
                  provider.allActivityModelObj.followback1ItemList.length,
              itemBuilder: (context, index) {
                Followback1ItemModel model =
                    provider.allActivityModelObj.followback1ItemList[index];
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
