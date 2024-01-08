// ignore_for_file: must_be_immutable

part of 'question_answer_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///QuestionAnswer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class QuestionAnswerEvent extends Equatable {}

/// Event that is dispatched when the QuestionAnswer widget is first created.
class QuestionAnswerInitialEvent extends QuestionAnswerEvent {
  @override
  List<Object?> get props => [];
}
