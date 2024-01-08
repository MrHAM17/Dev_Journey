import '../models/questionanswer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class QuestionanswerItemWidget extends StatelessWidget {
  QuestionanswerItemWidget(
    this.questionanswerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  QuestionanswerItemModel questionanswerItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: questionanswerItemModelObj?.bennySpanbauer,
                height: 60.adaptSize,
                width: 60.adaptSize,
                radius: BorderRadius.circular(
                  30.h,
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
                    Text(
                      questionanswerItemModelObj.bennySpanbauer1!,
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      questionanswerItemModelObj.whatIsYourFavorite!,
                      style: CustomTextStyles.titleMediumSemiBold,
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
              CustomImageView(
                imagePath: questionanswerItemModelObj?.image,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              SizedBox(height: 5.v),
              Text(
                questionanswerItemModelObj.sevenHundredThirtySix!,
                style: CustomTextStyles.labelLargeErrorContainer,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
