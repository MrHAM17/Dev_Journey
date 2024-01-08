// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'questionanswer_item_model.dart';/// This class defines the variables used in the [question_answer_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class QuestionAnswerModel extends Equatable {QuestionAnswerModel({this.questionanswerItemList = const []}) {  }

List<QuestionanswerItemModel> questionanswerItemList;

QuestionAnswerModel copyWith({List<QuestionanswerItemModel>? questionanswerItemList}) { return QuestionAnswerModel(
questionanswerItemList : questionanswerItemList ?? this.questionanswerItemList,
); } 
@override List<Object?> get props => [questionanswerItemList];
 }
