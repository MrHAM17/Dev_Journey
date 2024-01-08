// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'exploresix_item_model.dart';

/// This class defines the variables used in the [explore_six_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreSixModel extends Equatable {
  ExploreSixModel({this.exploresixItemList = const []}) {}

  List<ExploresixItemModel> exploresixItemList;

  ExploreSixModel copyWith({List<ExploresixItemModel>? exploresixItemList}) {
    return ExploreSixModel(
      exploresixItemList: exploresixItemList ?? this.exploresixItemList,
    );
  }

  @override
  List<Object?> get props => [exploresixItemList];
}
