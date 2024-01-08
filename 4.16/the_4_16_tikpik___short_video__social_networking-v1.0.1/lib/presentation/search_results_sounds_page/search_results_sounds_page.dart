import '../search_results_sounds_page/widgets/searchresultssounds_item_widget.dart';
import 'controller/search_results_sounds_controller.dart';
import 'models/search_results_sounds_model.dart';
import 'models/searchresultssounds_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';

class SearchResultsSoundsPage extends StatelessWidget {
  SearchResultsSoundsPage({Key? key})
      : super(
          key: key,
        );

  SearchResultsSoundsController controller =
      Get.put(SearchResultsSoundsController(SearchResultsSoundsModel().obs));

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
              _buildSearchresultssounds(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchresultssounds() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Obx(
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
          itemCount: controller.searchResultsSoundsModelObj.value
              .searchresultssoundsItemList.value.length,
          itemBuilder: (context, index) {
            SearchresultssoundsItemModel model = controller
                .searchResultsSoundsModelObj
                .value
                .searchresultssoundsItemList
                .value[index];
            return SearchresultssoundsItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
