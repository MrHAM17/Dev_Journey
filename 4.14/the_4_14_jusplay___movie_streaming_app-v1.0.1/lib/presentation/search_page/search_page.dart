import '../search_page/widgets/frame3_item_widget.dart';
import '../search_page/widgets/frame5_item_widget.dart';
import '../search_page/widgets/frame6_item_widget.dart';
import 'controller/search_controller.dart';
import 'models/frame3_item_model.dart';
import 'models/frame5_item_model.dart';
import 'models/frame6_item_model.dart';
import 'models/search_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_title_searchview.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key})
      : super(
          key: key,
        );

  SearchController controller = Get.put(SearchController(SearchModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 24.v),
          child: Column(
            children: [
              _buildFrame(),
              SizedBox(height: 26.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_popular".tr,
                      style: CustomTextStyles.titleMediumSemiBold,
                    ),
                    SizedBox(height: 9.v),
                    _buildFrame1(),
                    SizedBox(height: 25.v),
                    Text(
                      "msg_recommendations".tr,
                      style: CustomTextStyles.titleMediumSemiBold,
                    ),
                    SizedBox(height: 10.v),
                    _buildFrame2(),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 50.v,
      centerTitle: true,
      title: AppbarTitleSearchview(
        hintText: "msg_search_by_title".tr,
        controller: controller.searchController,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_recent_searches".tr,
            style: CustomTextStyles.titleMediumSemiBold,
          ),
          SizedBox(height: 11.v),
          Obx(
            () => Wrap(
              runSpacing: 12.v,
              spacing: 12.h,
              children: List<Widget>.generate(
                controller.searchModelObj.value.frame3ItemList.value.length,
                (index) {
                  Frame3ItemModel model = controller
                      .searchModelObj.value.frame3ItemList.value[index];

                  return Frame3ItemWidget(
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

  /// Section Widget
  Widget _buildFrame1() {
    return SizedBox(
      height: 135.v,
      child: Obx(
        () => ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 12.h,
            );
          },
          itemCount:
              controller.searchModelObj.value.frame5ItemList.value.length,
          itemBuilder: (context, index) {
            Frame5ItemModel model =
                controller.searchModelObj.value.frame5ItemList.value[index];
            return Frame5ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame2() {
    return SizedBox(
      height: 135.v,
      child: Obx(
        () => ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 12.h,
            );
          },
          itemCount:
              controller.searchModelObj.value.frame6ItemList.value.length,
          itemBuilder: (context, index) {
            Frame6ItemModel model =
                controller.searchModelObj.value.frame6ItemList.value[index];
            return Frame6ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
