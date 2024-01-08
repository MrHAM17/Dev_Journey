import '../rising_stars_page/widgets/risingstars_item_widget.dart';
import 'controller/rising_stars_controller.dart';
import 'models/rising_stars_model.dart';
import 'models/risingstars_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';

class RisingStarsPage extends StatelessWidget {
  RisingStarsPage({Key? key})
      : super(
          key: key,
        );

  RisingStarsController controller =
      Get.put(RisingStarsController(RisingStarsModel().obs));

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
                SizedBox(height: 17.v),
                _buildRisingstars(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRisingstars() {
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
              .risingStarsModelObj.value.risingstarsItemList.value.length,
          itemBuilder: (context, index) {
            RisingstarsItemModel model = controller
                .risingStarsModelObj.value.risingstarsItemList.value[index];
            return RisingstarsItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
