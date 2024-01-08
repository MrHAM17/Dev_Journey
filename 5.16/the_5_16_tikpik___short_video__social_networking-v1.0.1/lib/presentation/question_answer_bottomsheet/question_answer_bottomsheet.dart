import '../question_answer_bottomsheet/widgets/questionanswer_item_widget.dart';
import 'models/question_answer_model.dart';
import 'models/questionanswer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'provider/question_answer_provider.dart';

// ignore_for_file: must_be_immutable
class QuestionAnswerBottomsheet extends StatefulWidget {
  const QuestionAnswerBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  QuestionAnswerBottomsheetState createState() =>
      QuestionAnswerBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => QuestionAnswerProvider(),
      child: QuestionAnswerBottomsheet(),
    );
  }
}

class QuestionAnswerBottomsheetState extends State<QuestionAnswerBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

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
    return Consumer<QuestionAnswerProvider>(
      builder: (context, provider, child) {
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
          itemCount:
              provider.questionAnswerModelObj.questionanswerItemList.length,
          itemBuilder: (context, index) {
            QuestionanswerItemModel model =
                provider.questionAnswerModelObj.questionanswerItemList[index];
            return QuestionanswerItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
