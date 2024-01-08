import '../search_type_keyword_screen/widgets/autolayoutvertical1_item_widget.dart';
import '../search_type_keyword_screen/widgets/autolayoutvertical2_item_widget.dart';
import 'controller/search_type_keyword_controller.dart';
import 'models/autolayoutvertical1_item_model.dart';
import 'models/autolayoutvertical2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class SearchTypeKeywordScreen extends GetWidget<SearchTypeKeywordController> {
  const SearchTypeKeywordScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(24.h),
          child: Column(
            children: [
              CustomSearchView(
                controller: controller.searchController,
                hintText: "lbl_ariana".tr,
              ),
              SizedBox(height: 24.v),
              _buildAutoLayoutHorizontal(),
              SizedBox(height: 15.v),
              _buildAutoLayoutVertical(),
              SizedBox(height: 34.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "msg_suggested_searches".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 14.v),
              _buildAutoLayoutVertical1(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "lbl_recent".tr,
          style: theme.textTheme.titleLarge,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: Text(
            "lbl_clear_all".tr,
            style: CustomTextStyles.titleMediumPrimary,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutVertical() {
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
        itemCount: controller.searchTypeKeywordModelObj.value
            .autolayoutvertical1ItemList.value.length,
        itemBuilder: (context, index) {
          Autolayoutvertical1ItemModel model = controller
              .searchTypeKeywordModelObj
              .value
              .autolayoutvertical1ItemList
              .value[index];
          return Autolayoutvertical1ItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutVertical1() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 25.v,
          );
        },
        itemCount: controller.searchTypeKeywordModelObj.value
            .autolayoutvertical2ItemList.value.length,
        itemBuilder: (context, index) {
          Autolayoutvertical2ItemModel model = controller
              .searchTypeKeywordModelObj
              .value
              .autolayoutvertical2ItemList
              .value[index];
          return Autolayoutvertical2ItemWidget(
            model,
          );
        },
      ),
    );
  }
}
