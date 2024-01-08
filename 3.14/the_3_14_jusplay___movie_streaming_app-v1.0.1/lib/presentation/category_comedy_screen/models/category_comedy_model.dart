// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'categorycomedy_item_model.dart';

/// This class defines the variables used in the [category_comedy_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoryComedyModel extends Equatable {
  CategoryComedyModel({this.categorycomedyItemList = const []}) {}

  List<CategorycomedyItemModel> categorycomedyItemList;

  CategoryComedyModel copyWith(
      {List<CategorycomedyItemModel>? categorycomedyItemList}) {
    return CategoryComedyModel(
      categorycomedyItemList:
          categorycomedyItemList ?? this.categorycomedyItemList,
    );
  }

  @override
  List<Object?> get props => [categorycomedyItemList];
}
