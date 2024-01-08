import '../trending_page/widgets/trending_item_widget.dart';
import 'controller/trending_controller.dart';
import 'models/trending_item_model.dart';
import 'models/trending_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_10_social___social_networking/core/app_export.dart';

class TrendingPage extends StatelessWidget {
  TrendingPage({Key? key})
      : super(
          key: key,
        );

  TrendingController controller =
      Get.put(TrendingController(TrendingModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimary,
          child: Column(
            children: [
              SizedBox(height: 23.v),
              _buildTrending(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTrending() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Obx(
          () => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 24.v,
              );
            },
            itemCount:
                controller.trendingModelObj.value.trendingItemList.value.length,
            itemBuilder: (context, index) {
              TrendingItemModel model = controller
                  .trendingModelObj.value.trendingItemList.value[index];
              return TrendingItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
