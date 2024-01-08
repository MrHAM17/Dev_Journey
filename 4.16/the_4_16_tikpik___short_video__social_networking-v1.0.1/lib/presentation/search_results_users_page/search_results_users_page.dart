import '../search_results_users_page/widgets/searchresultsusers_item_widget.dart';
import 'controller/search_results_users_controller.dart';
import 'models/search_results_users_model.dart';
import 'models/searchresultsusers_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';

class SearchResultsUsersPage extends StatelessWidget {
  SearchResultsUsersPage({Key? key})
      : super(
          key: key,
        );

  SearchResultsUsersController controller =
      Get.put(SearchResultsUsersController(SearchResultsUsersModel().obs));

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
              _buildSearchresultsusers(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchresultsusers() {
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
          itemCount: controller.searchResultsUsersModelObj.value
              .searchresultsusersItemList.value.length,
          itemBuilder: (context, index) {
            SearchresultsusersItemModel model = controller
                .searchResultsUsersModelObj
                .value
                .searchresultsusersItemList
                .value[index];
            return SearchresultsusersItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
