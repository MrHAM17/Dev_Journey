import '../discover_screen/widgets/discover_item_widget.dart';
import 'models/discover_item_model.dart';
import 'notifier/discover_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_12_street_style___e_commerce_app/core/app_export.dart';
import 'package:the_6_12_street_style___e_commerce_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_6_12_street_style___e_commerce_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_6_12_street_style___e_commerce_app/widgets/app_bar/custom_app_bar.dart';

class DiscoverScreen extends ConsumerStatefulWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  DiscoverScreenState createState() => DiscoverScreenState();
}

class DiscoverScreenState extends ConsumerState<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 21.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_discover".tr,
                          style: theme.textTheme.displayMedium),
                      SizedBox(height: 8.v),
                      Text("msg_discover_your_products".tr,
                          style: theme.textTheme.titleSmall),
                      SizedBox(height: 38.v),
                      _buildAddSection(context),
                      SizedBox(height: 41.v),
                      _buildDiscover(context)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 53.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 29.h, top: 13.v, bottom: 13.v)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSearch,
              margin: EdgeInsets.only(left: 23.h, top: 13.v, right: 13.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgGroup86,
              margin: EdgeInsets.only(left: 24.h, top: 13.v, right: 13.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgGroup84,
              margin: EdgeInsets.only(left: 24.h, top: 13.v, right: 36.h))
        ]);
  }

  /// Section Widget
  Widget _buildAddSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 6.h),
        padding: EdgeInsets.symmetric(horizontal: 154.h, vertical: 37.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
        child: CustomImageView(
            imagePath: ImageConstant.imgPlus,
            height: 22.adaptSize,
            width: 22.adaptSize));
  }

  /// Section Widget
  Widget _buildDiscover(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.h),
        child: Consumer(builder: (context, ref, _) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 20.v);
              },
              itemCount: ref
                      .watch(discoverNotifier)
                      .discoverModelObj
                      ?.discoverItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                DiscoverItemModel model = ref
                        .watch(discoverNotifier)
                        .discoverModelObj
                        ?.discoverItemList[index] ??
                    DiscoverItemModel();
                return DiscoverItemWidget(model);
              });
        }));
  }
}
