import '../suggested_page/widgets/suggested_item_widget.dart';
import 'controller/suggested_controller.dart';
import 'models/suggested_item_model.dart';
import 'models/suggested_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';

class SuggestedPage extends StatelessWidget {
  SuggestedPage({Key? key})
      : super(
          key: key,
        );

  SuggestedController controller =
      Get.put(SuggestedController(SuggestedModel().obs));

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
              _buildSuggested(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSuggested() {
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
          itemCount:
              controller.suggestedModelObj.value.suggestedItemList.value.length,
          itemBuilder: (context, index) {
            SuggestedItemModel model = controller
                .suggestedModelObj.value.suggestedItemList.value[index];
            return SuggestedItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
