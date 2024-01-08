import '../search_page/widgets/search_item_widget.dart';
import 'controller/search_controller.dart';
import 'models/search_item_model.dart';
import 'models/search_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:the_4_09_social_dashboards_ui_kit/core/app_export.dart';

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
        backgroundColor: theme.colorScheme.onPrimary,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 30.v),
              _buildSearch(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearch() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.h),
        child: Obx(
          () => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 470.v,
              crossAxisCount: 1,
              mainAxisSpacing: 1.h,
              crossAxisSpacing: 1.h,
            ),
            physics: BouncingScrollPhysics(),
            itemCount:
                controller.searchModelObj.value.searchItemList.value.length,
            itemBuilder: (context, index) {
              SearchItemModel model =
                  controller.searchModelObj.value.searchItemList.value[index];
              return SearchItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
