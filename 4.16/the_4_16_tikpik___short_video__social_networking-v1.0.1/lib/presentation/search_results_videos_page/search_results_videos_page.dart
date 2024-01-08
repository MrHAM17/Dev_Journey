import '../search_results_videos_page/widgets/searchresultsvideos_item_widget.dart';
import 'controller/search_results_videos_controller.dart';
import 'models/search_results_videos_model.dart';
import 'models/searchresultsvideos_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';

class SearchResultsVideosPage extends StatelessWidget {
  SearchResultsVideosPage({Key? key})
      : super(
          key: key,
        );

  SearchResultsVideosController controller =
      Get.put(SearchResultsVideosController(SearchResultsVideosModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              SizedBox(height: 10.v),
              _buildSearchresultsvideos(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchresultsvideos() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 329.v,
            crossAxisCount: 2,
            mainAxisSpacing: 8.h,
            crossAxisSpacing: 8.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller.searchResultsVideosModelObj.value
              .searchresultsvideosItemList.value.length,
          itemBuilder: (context, index) {
            SearchresultsvideosItemModel model = controller
                .searchResultsVideosModelObj
                .value
                .searchresultsvideosItemList
                .value[index];
            return SearchresultsvideosItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
