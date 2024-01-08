// ignore_for_file: must_be_immutable

part of 'question_answer_notifier.dart';

/// Represents the state of QuestionAnswer in the application.
class QuestionAnswerState extends Equatable {
  QuestionAnswerState({this.questionAnswerModelObj});

  QuestionAnswerModel? questionAnswerModelObj;

  @override
  List<Object?> get props => [
        questionAnswerModelObj,
      ];

  QuestionAnswerState copyWith({QuestionAnswerModel? questionAnswerModelObj}) {
    return QuestionAnswerState(
      questionAnswerModelObj:
          questionAnswerModelObj ?? this.questionAnswerModelObj,
    );
  }
}
