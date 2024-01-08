import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/questionanswer_item_model.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/question_answer_bottomsheet/models/question_answer_model.dart';
part 'question_answer_event.dart';
part 'question_answer_state.dart';

/// A bloc that manages the state of a QuestionAnswer according to the event that is dispatched to it.
class QuestionAnswerBloc
    extends Bloc<QuestionAnswerEvent, QuestionAnswerState> {
  QuestionAnswerBloc(QuestionAnswerState initialState) : super(initialState) {
    on<QuestionAnswerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    QuestionAnswerInitialEvent event,
    Emitter<QuestionAnswerState> emit,
  ) async {
    emit(state.copyWith(
        questionAnswerModelObj: state.questionAnswerModelObj?.copyWith(
      questionanswerItemList: fillQuestionanswerItemList(),
    )));
  }

  List<QuestionanswerItemModel> fillQuestionanswerItemList() {
    return [
      QuestionanswerItemModel(
          bennySpanbauer: ImageConstant.imgEllipse15,
          bennySpanbauer1: "Benny Spanbauer",
          whatIsYourFavorite: "What is your favorite fruit?",
          image: ImageConstant.imgIconlyBoldHeart,
          sevenHundredThirtySix: "736"),
      QuestionanswerItemModel(
          bennySpanbauer: ImageConstant.imgEllipse16,
          bennySpanbauer1: "Hannah Burress",
          whatIsYourFavorite: "Do you have any pet peeves?",
          image: ImageConstant.imgFavorite,
          sevenHundredThirtySix: "662"),
      QuestionanswerItemModel(
          bennySpanbauer: ImageConstant.imgEllipse18,
          bennySpanbauer1: "Rodolfo Goode",
          whatIsYourFavorite: "Have you ever been to Asia?",
          image: ImageConstant.imgFavorite,
          sevenHundredThirtySix: "364")
    ];
  }
}
