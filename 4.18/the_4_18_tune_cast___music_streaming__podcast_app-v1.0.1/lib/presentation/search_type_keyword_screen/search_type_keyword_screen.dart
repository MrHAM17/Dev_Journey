import '../search_type_keyword_screen/widgets/searchtypekeyword_item_widget.dart';
import 'controller/search_type_keyword_controller.dart';
import 'models/searchtypekeyword_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/custom_search_view.dart';

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
                hintText: "lbl_abcdefghijklm".tr,
                contentPadding: EdgeInsets.only(
                  top: 19.v,
                  right: 30.h,
                  bottom: 19.v,
                ),
              ),
              SizedBox(height: 23.v),
              _buildAutoLayoutHorizontal(),
              SizedBox(height: 24.v),
              Divider(),
              SizedBox(height: 23.v),
              _buildSearchTypeKeyword(),
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
          "lbl_recent_searches".tr,
          style: theme.textTheme.titleLarge,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(
            "lbl_clear_all".tr,
            style: CustomTextStyles.titleMediumOnPrimaryContainer16,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSearchTypeKeyword() {
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
            .searchtypekeywordItemList.value.length,
        itemBuilder: (context, index) {
          SearchtypekeywordItemModel model = controller
              .searchTypeKeywordModelObj
              .value
              .searchtypekeywordItemList
              .value[index];
          return SearchtypekeywordItemWidget(
            model,
          );
        },
      ),
    );
  }
}
