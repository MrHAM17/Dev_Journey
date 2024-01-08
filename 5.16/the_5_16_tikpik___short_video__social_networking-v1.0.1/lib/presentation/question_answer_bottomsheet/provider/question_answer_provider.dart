import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/question_answer_bottomsheet/models/question_answer_model.dart';import '../models/questionanswer_item_model.dart';/// A provider class for the QuestionAnswerBottomsheet.
///
/// This provider manages the state of the QuestionAnswerBottomsheet, including the
/// current questionAnswerModelObj

// ignore_for_file: must_be_immutable
class QuestionAnswerProvider extends ChangeNotifier {QuestionAnswerModel questionAnswerModelObj = QuestionAnswerModel();

@override void dispose() { super.dispose(); } 
 }
