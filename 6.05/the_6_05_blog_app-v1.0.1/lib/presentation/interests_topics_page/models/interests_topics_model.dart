// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'intereststopics_item_model.dart';

/// This class defines the variables used in the [interests_topics_page],
/// and is typically used to hold data that is passed between different parts of the application.
class InterestsTopicsModel extends Equatable {
  InterestsTopicsModel({this.intereststopicsItemList = const []}) {}

  List<IntereststopicsItemModel> intereststopicsItemList;

  InterestsTopicsModel copyWith(
      {List<IntereststopicsItemModel>? intereststopicsItemList}) {
    return InterestsTopicsModel(
      intereststopicsItemList:
          intereststopicsItemList ?? this.intereststopicsItemList,
    );
  }

  @override
  List<Object?> get props => [intereststopicsItemList];
}
