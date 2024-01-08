import '../weekly_ranking_page/widgets/weeklyranking_item_widget.dart';
import 'controller/weekly_ranking_controller.dart';
import 'models/weekly_ranking_model.dart';
import 'models/weeklyranking_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';

class WeeklyRankingPage extends StatelessWidget {
  WeeklyRankingPage({Key? key})
      : super(
          key: key,
        );

  WeeklyRankingController controller =
      Get.put(WeeklyRankingController(WeeklyRankingModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onErrorContainer,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSeeLive,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillOnErrorContainer.copyWith(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgSeeLive,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 24.v),
                _buildWeeklyRanking(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWeeklyRanking() {
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
          itemCount: controller
              .weeklyRankingModelObj.value.weeklyrankingItemList.value.length,
          itemBuilder: (context, index) {
            WeeklyrankingItemModel model = controller
                .weeklyRankingModelObj.value.weeklyrankingItemList.value[index];
            return WeeklyrankingItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
