import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/intereststopics_item_model.dart';
import 'package:the_3_05_blog_app/presentation/interests_topics_page/models/interests_topics_model.dart';
part 'interests_topics_event.dart';
part 'interests_topics_state.dart';

/// A bloc that manages the state of a InterestsTopics according to the event that is dispatched to it.
class InterestsTopicsBloc
    extends Bloc<InterestsTopicsEvent, InterestsTopicsState> {
  InterestsTopicsBloc(InterestsTopicsState initialState) : super(initialState) {
    on<InterestsTopicsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InterestsTopicsInitialEvent event,
    Emitter<InterestsTopicsState> emit,
  ) async {
    emit(state.copyWith(
        interestsTopicsModelObj: state.interestsTopicsModelObj?.copyWith(
      intereststopicsItemList: fillIntereststopicsItemList(),
    )));
  }

  List<IntereststopicsItemModel> fillIntereststopicsItemList() {
    return [
      IntereststopicsItemModel(easyToUse: "Art"),
      IntereststopicsItemModel(easyToUse: "Books"),
      IntereststopicsItemModel(easyToUse: "Comics"),
      IntereststopicsItemModel(easyToUse: "Fiction"),
      IntereststopicsItemModel(easyToUse: "Film"),
      IntereststopicsItemModel(easyToUse: "Gaming"),
      IntereststopicsItemModel(easyToUse: "Humor"),
      IntereststopicsItemModel(easyToUse: "Music"),
      IntereststopicsItemModel(easyToUse: "Nonfiction"),
      IntereststopicsItemModel(easyToUse: "Art")
    ];
  }
}
