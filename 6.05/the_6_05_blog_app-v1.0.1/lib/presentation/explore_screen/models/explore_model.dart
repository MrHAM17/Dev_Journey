// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'stories1_item_model.dart';

/// This class defines the variables used in the [explore_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreModel extends Equatable {
  ExploreModel({this.stories1ItemList = const []}) {}

  List<Stories1ItemModel> stories1ItemList;

  ExploreModel copyWith({List<Stories1ItemModel>? stories1ItemList}) {
    return ExploreModel(
      stories1ItemList: stories1ItemList ?? this.stories1ItemList,
    );
  }

  @override
  List<Object?> get props => [stories1ItemList];
}
