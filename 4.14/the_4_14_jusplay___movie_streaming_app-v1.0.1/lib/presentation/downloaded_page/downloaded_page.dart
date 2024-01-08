import '../downloaded_page/widgets/downloaded_item_widget.dart';
import 'controller/downloaded_controller.dart';
import 'models/downloaded_item_model.dart';
import 'models/downloaded_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_title.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';

class DownloadedPage extends StatelessWidget {
  DownloadedPage({Key? key})
      : super(
          key: key,
        );

  DownloadedController controller =
      Get.put(DownloadedController(DownloadedModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 25.v,
            right: 16.h,
          ),
          child: Obx(
            () => ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 18.v,
                );
              },
              itemCount: controller
                  .downloadedModelObj.value.downloadedItemList.value.length,
              itemBuilder: (context, index) {
                DownloadedItemModel model = controller
                    .downloadedModelObj.value.downloadedItemList.value[index];
                return DownloadedItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 48.v,
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_download".tr,
      ),
    );
  }
}
