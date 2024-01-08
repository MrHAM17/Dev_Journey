import '../interests_topics_page/widgets/intereststopics_item_widget.dart';
import 'controller/interests_topics_controller.dart';
import 'models/interests_topics_model.dart';
import 'models/intereststopics_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_05_blog_app/core/app_export.dart';

class InterestsTopicsPage extends StatelessWidget {
  InterestsTopicsPage({Key? key})
      : super(
          key: key,
        );

  InterestsTopicsController controller =
      Get.put(InterestsTopicsController(InterestsTopicsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.white,
          child: Column(
            children: [
              SizedBox(height: 28.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_arts_entertainment".tr,
                      style: CustomTextStyles.titleSmallBlack900,
                    ),
                    SizedBox(height: 20.v),
                    _buildInterestsTopics(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInterestsTopics() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 16.v,
          );
        },
        itemCount: controller
            .interestsTopicsModelObj.value.intereststopicsItemList.value.length,
        itemBuilder: (context, index) {
          IntereststopicsItemModel model = controller.interestsTopicsModelObj
              .value.intereststopicsItemList.value[index];
          return IntereststopicsItemWidget(
            model,
          );
        },
      ),
    );
  }
}
