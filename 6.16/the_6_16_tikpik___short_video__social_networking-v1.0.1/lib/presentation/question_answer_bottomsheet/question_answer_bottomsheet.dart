import '../question_answer_bottomsheet/widgets/questionanswer_item_widget.dart';
import 'models/questionanswer_item_model.dart';
import 'notifier/question_answer_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class QuestionAnswerBottomsheet extends ConsumerStatefulWidget {
  const QuestionAnswerBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  QuestionAnswerBottomsheetState createState() =>
      QuestionAnswerBottomsheetState();
}

class QuestionAnswerBottomsheetState
    extends ConsumerState<QuestionAnswerBottomsheet> {
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
          _buildQuestionAnswer(context),
          SizedBox(height: 28.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildQuestionAnswer(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return ListView.separated(
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
          itemCount: ref
                  .watch(questionAnswerNotifier)
                  .questionAnswerModelObj
                  ?.questionanswerItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            QuestionanswerItemModel model = ref
                    .watch(questionAnswerNotifier)
                    .questionAnswerModelObj
                    ?.questionanswerItemList[index] ??
                QuestionanswerItemModel();
            return QuestionanswerItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
