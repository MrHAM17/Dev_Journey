// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'similiar_item_model.dart';

/// This class defines the variables used in the [similiar_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SimiliarModel extends Equatable {
  SimiliarModel({this.similiarItemList = const []}) {}

  List<SimiliarItemModel> similiarItemList;

  SimiliarModel copyWith({List<SimiliarItemModel>? similiarItemList}) {
    return SimiliarModel(
      similiarItemList: similiarItemList ?? this.similiarItemList,
    );
  }

  @override
  List<Object?> get props => [similiarItemList];
}
