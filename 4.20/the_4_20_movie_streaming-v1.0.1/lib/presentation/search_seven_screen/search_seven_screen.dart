import '../search_seven_screen/widgets/frameseventynine_item_widget.dart';
import '../search_seven_screen/widgets/searchseven_item_widget.dart';
import 'controller/search_seven_controller.dart';
import 'models/frameseventynine_item_model.dart';
import 'models/searchseven_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_20_movie_streaming/core/app_export.dart';
import 'package:the_4_20_movie_streaming/widgets/custom_search_view.dart';

class SearchSevenScreen extends GetWidget<SearchSevenController> {
  const SearchSevenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 8.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, right: 16.h, bottom: 118.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomSearchView(
                                        controller: controller.searchController,
                                        hintText: "lbl_love".tr),
                                    SizedBox(height: 14.v),
                                    Text("msg_search_result_for".tr,
                                        style: CustomTextStyles
                                            .titleMediumWhiteA70018),
                                    SizedBox(height: 29.v),
                                    Text("lbl_movies_6".tr,
                                        style: theme.textTheme.titleSmall),
                                    SizedBox(height: 11.v),
                                    _buildSearchSeven(),
                                    SizedBox(height: 17.v),
                                    _buildFrameSeventyNine(),
                                    SizedBox(height: 37.v),
                                    Text("lbl_categories_1".tr,
                                        style: theme.textTheme.titleSmall),
                                    SizedBox(height: 17.v),
                                    SizedBox(
                                        height: 60.v,
                                        width: 90.h,
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgThumbnailImage33,
                                                  height: 60.v,
                                                  width: 90.h,
                                                  radius: BorderRadius.circular(
                                                      2.h),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Opacity(
                                                      opacity: 0.87,
                                                      child: Text("lbl_love".tr,
                                                          style: theme.textTheme
                                                              .bodyMedium)))
                                            ]))
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildSearchSeven() {
    return Obx(() => GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 177.v,
            crossAxisCount: 3,
            mainAxisSpacing: 16.h,
            crossAxisSpacing: 16.h),
        physics: NeverScrollableScrollPhysics(),
        itemCount: controller
            .searchSevenModelObj.value.searchsevenItemList.value.length,
        itemBuilder: (context, index) {
          SearchsevenItemModel model = controller
              .searchSevenModelObj.value.searchsevenItemList.value[index];
          return SearchsevenItemWidget(model, onTapMovieCard: () {
            onTapMovieCard();
          });
        }));
  }

  /// Section Widget
  Widget _buildFrameSeventyNine() {
    return Obx(() => Wrap(
        runSpacing: 8.v,
        spacing: 8.h,
        children: List<Widget>.generate(
            controller.searchSevenModelObj.value.frameseventynineItemList.value
                .length, (index) {
          FrameseventynineItemModel model = controller
              .searchSevenModelObj.value.frameseventynineItemList.value[index];
          return FrameseventynineItemWidget(model);
        })));
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard() {
    Get.toNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }
}
