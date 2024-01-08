import '../question_answer_bottomsheet/widgets/questionanswer_item_widget.dart';
import 'controller/question_answer_controller.dart';
import 'models/questionanswer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';

class QuestionAnswerBottomsheet extends StatelessWidget {
  QuestionAnswerBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  QuestionAnswerController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineGray100.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrameGray300,
            height: 3.v,
            width: 38.h,
          ),
          SizedBox(height: 24.v),
          Text(
            "msg_question_answer".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 23.v),
          Divider(),
          SizedBox(height: 25.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "msg_3_378_questions".tr,
              style: CustomTextStyles.titleMediumErrorContainer,
            ),
          ),
          SizedBox(height: 23.v),
          _buildQuestionAnswer(),
          SizedBox(height: 28.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildQuestionAnswer() {
    return Obx(
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
            .questionAnswerModelObj.value.questionanswerItemList.value.length,
        itemBuilder: (context, index) {
          QuestionanswerItemModel model = controller
              .questionAnswerModelObj.value.questionanswerItemList.value[index];
          return QuestionanswerItemWidget(
            model,
          );
        },
      ),
    );
  }
}
