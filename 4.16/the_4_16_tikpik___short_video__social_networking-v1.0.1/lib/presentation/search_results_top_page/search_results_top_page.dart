import '../search_results_top_page/widgets/autolayouthorizontal_item_widget.dart';
import '../search_results_top_page/widgets/follow_item_widget.dart';
import 'controller/search_results_top_controller.dart';
import 'models/autolayouthorizontal_item_model.dart';
import 'models/follow_item_model.dart';
import 'models/search_results_top_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';

class SearchResultsTopPage extends StatelessWidget {
  SearchResultsTopPage({Key? key})
      : super(
          key: key,
        );

  SearchResultsTopController controller =
      Get.put(SearchResultsTopController(SearchResultsTopModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              _buildFollow(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFollow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_users".tr,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 15.v),
          Obx(
            () => ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 24.v,
                );
              },
              itemCount: controller
                  .searchResultsTopModelObj.value.followItemList.value.length,
              itemBuilder: (context, index) {
                FollowItemModel model = controller
                    .searchResultsTopModelObj.value.followItemList.value[index];
                return FollowItemWidget(
                  model,
                );
              },
            ),
          ),
          SizedBox(height: 31.v),
          Text(
            "lbl_videos".tr,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 16.v),
          SizedBox(
            height: 200.v,
            child: Obx(
              () => ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 8.h,
                  );
                },
                itemCount: controller.searchResultsTopModelObj.value
                    .autolayouthorizontalItemList.value.length,
                itemBuilder: (context, index) {
                  AutolayouthorizontalItemModel model = controller
                      .searchResultsTopModelObj
                      .value
                      .autolayouthorizontalItemList
                      .value[index];
                  return AutolayouthorizontalItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
