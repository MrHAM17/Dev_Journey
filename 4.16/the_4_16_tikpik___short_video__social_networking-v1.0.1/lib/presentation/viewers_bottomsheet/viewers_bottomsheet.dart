import '../viewers_bottomsheet/widgets/viewers_item_widget.dart';
import 'controller/viewers_controller.dart';
import 'models/viewers_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/widgets/custom_search_view.dart';

class ViewersBottomsheet extends StatelessWidget {
  ViewersBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewersController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineGray100.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrameGray300,
            height: 3.v,
            width: 38.h,
          ),
          SizedBox(height: 24.v),
          Text(
            "lbl_3_6k_viewers".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 23.v),
          Divider(),
          SizedBox(height: 23.v),
          CustomSearchView(
            controller: controller.searchController,
            hintText: "lbl_search".tr,
            contentPadding: EdgeInsets.only(
              top: 19.v,
              right: 30.h,
              bottom: 19.v,
            ),
          ),
          SizedBox(height: 24.v),
          _buildViewers(),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildViewers() {
    return Obx(
      () => ListView.separated(
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
            controller.viewersModelObj.value.viewersItemList.value.length,
        itemBuilder: (context, index) {
          ViewersItemModel model =
              controller.viewersModelObj.value.viewersItemList.value[index];
          return ViewersItemWidget(
            model,
          );
        },
      ),
    );
  }
}
