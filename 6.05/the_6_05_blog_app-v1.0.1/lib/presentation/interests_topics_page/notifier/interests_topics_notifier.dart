import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/intereststopics_item_model.dart';
import 'package:the_6_05_blog_app/presentation/interests_topics_page/models/interests_topics_model.dart';
part 'interests_topics_state.dart';

final interestsTopicsNotifier =
    StateNotifierProvider<InterestsTopicsNotifier, InterestsTopicsState>(
  (ref) => InterestsTopicsNotifier(InterestsTopicsState(
    interestsTopicsModelObj: InterestsTopicsModel(intereststopicsItemList: [
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
    ]),
  )),
);

/// A notifier that manages the state of a InterestsTopics according to the event that is dispatched to it.
class InterestsTopicsNotifier extends StateNotifier<InterestsTopicsState> {
  InterestsTopicsNotifier(InterestsTopicsState state) : super(state) {}
}
