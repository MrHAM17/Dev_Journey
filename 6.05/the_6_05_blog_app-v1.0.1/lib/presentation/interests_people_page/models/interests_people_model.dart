// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'interestspeople_item_model.dart';

/// This class defines the variables used in the [interests_people_page],
/// and is typically used to hold data that is passed between different parts of the application.
class InterestsPeopleModel extends Equatable {
  InterestsPeopleModel({this.interestspeopleItemList = const []}) {}

  List<InterestspeopleItemModel> interestspeopleItemList;

  InterestsPeopleModel copyWith(
      {List<InterestspeopleItemModel>? interestspeopleItemList}) {
    return InterestsPeopleModel(
      interestspeopleItemList:
          interestspeopleItemList ?? this.interestspeopleItemList,
    );
  }

  @override
  List<Object?> get props => [interestspeopleItemList];
}
