import '../controller/question_answer_controller.dart';
import '../models/questionanswer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class QuestionanswerItemWidget extends StatelessWidget {
  QuestionanswerItemWidget(
    this.questionanswerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  QuestionanswerItemModel questionanswerItemModelObj;

  var controller = Get.find<QuestionAnswerController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: questionanswerItemModelObj.bennySpanbauer!.value,
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                  radius: BorderRadius.circular(
                    30.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 10.v,
                  bottom: 6.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        questionanswerItemModelObj.bennySpanbauer1!.value,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Obx(
                      () => Text(
                        questionanswerItemModelObj.whatIsYourFavorite!.value,
                        style: CustomTextStyles.titleMediumSemiBold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 81.h,
            top: 7.v,
            bottom: 7.v,
          ),
          child: Column(
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: questionanswerItemModelObj.image!.value,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              SizedBox(height: 5.v),
              Obx(
                () => Text(
                  questionanswerItemModelObj.sevenHundredThirtySix!.value,
                  style: CustomTextStyles.labelLargeErrorContainer,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
