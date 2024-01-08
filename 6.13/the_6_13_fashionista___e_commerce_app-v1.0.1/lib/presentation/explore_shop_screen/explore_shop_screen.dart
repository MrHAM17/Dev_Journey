import '../explore_shop_screen/widgets/frame_item_widget.dart';
import 'models/frame_item_model.dart';
import 'notifier/explore_shop_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_6_13_fashionista___e_commerce_app/widgets/app_bar/appbar_title.dart';
import 'package:the_6_13_fashionista___e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_13_fashionista___e_commerce_app/widgets/custom_elevated_button.dart';

class ExploreShopScreen extends ConsumerStatefulWidget {
  const ExploreShopScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ExploreShopScreenState createState() => ExploreShopScreenState();
}

class ExploreShopScreenState extends ConsumerState<ExploreShopScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 8.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 304.h,
                margin: EdgeInsets.only(right: 38.h),
                child: Text(
                  "msg_choose_which_you".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 28.v),
              _buildFrame(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildExploreShop(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 86.v,
      title: AppbarTitle(
        text: "msg_what_products_you".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return Wrap(
          runSpacing: 12.v,
          spacing: 12.h,
          children: List<Widget>.generate(
            ref
                    .watch(exploreShopNotifier)
                    .exploreShopModelObj
                    ?.frameItemList
                    .length ??
                0,
            (index) {
              FrameItemModel model = ref
                      .watch(exploreShopNotifier)
                      .exploreShopModelObj
                      ?.frameItemList[index] ??
                  FrameItemModel();

              return FrameItemWidget(
                model,
                onSelectedChipView1: (value) {
                  ref
                      .read(exploreShopNotifier.notifier)
                      .onSelectedChipView1(index, value);
                },
              );
            },
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildExploreShop(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_explore_shop".tr,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 36.v,
      ),
    );
  }
}
