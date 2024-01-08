import '../home_page/widgets/aladdin_item_widget.dart';
import '../home_page/widgets/frame_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/aladdin_item_model.dart';
import 'models/frame_item_model.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: _buildScrollView()));
  }

  /// Section Widget
  Widget _buildScrollView() {
    return SingleChildScrollView(
        child: Column(children: [
      SizedBox(height: 26.v),
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Column(children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding: EdgeInsets.only(right: 16.h),
                  child: _buildFrame(
                      latestMovies: "lbl_most_popular".tr,
                      seeAll: "lbl_see_all".tr)),
              SizedBox(height: 9.v),
              SizedBox(
                  height: 178.v,
                  child: Obx(() => ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 16.h);
                      },
                      itemCount: controller
                          .homeModelObj.value.frameItemList.value.length,
                      itemBuilder: (context, index) {
                        FrameItemModel model = controller
                            .homeModelObj.value.frameItemList.value[index];
                        return FrameItemWidget(model);
                      })))
            ]),
            SizedBox(height: 19.v),
            Padding(
                padding: EdgeInsets.only(right: 16.h),
                child: _buildFrame(
                    latestMovies: "lbl_latest_movies".tr,
                    seeAll: "lbl_see_all".tr)),
            SizedBox(height: 7.v),
            SizedBox(
                height: 178.v,
                child: Obx(() => ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 16.h);
                    },
                    itemCount: controller
                        .homeModelObj.value.aladdinItemList.value.length,
                    itemBuilder: (context, index) {
                      AladdinItemModel model = controller
                          .homeModelObj.value.aladdinItemList.value[index];
                      return AladdinItemWidget(model);
                    })))
          ]))
    ]));
  }

  /// Common widget
  Widget _buildFrame({
    required String latestMovies,
    required String seeAll,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(latestMovies,
              style: CustomTextStyles.titleMediumSemiBold
                  .copyWith(color: appTheme.whiteA700)),
          Padding(
              padding: EdgeInsets.only(bottom: 4.v),
              child: Text(seeAll,
                  style: theme.textTheme.bodySmall!
                      .copyWith(color: appTheme.whiteA700)))
        ]);
  }
}
