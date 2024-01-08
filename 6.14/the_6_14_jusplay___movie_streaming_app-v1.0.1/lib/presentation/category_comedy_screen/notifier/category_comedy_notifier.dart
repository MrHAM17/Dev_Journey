import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/categorycomedy_item_model.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/category_comedy_screen/models/category_comedy_model.dart';
part 'category_comedy_state.dart';

final categoryComedyNotifier = StateNotifierProvider<CategoryComedyNotifier,
    CategoryComedyState>((ref) => CategoryComedyNotifier(CategoryComedyState(
        categoryComedyModelObj: CategoryComedyModel(categorycomedyItemList: [
      CategorycomedyItemModel(rectangle: ImageConstant.imgRectangle12078),
      CategorycomedyItemModel(
          rectangle: ImageConstant.imgRectangle12078140x102),
      CategorycomedyItemModel(rectangle: ImageConstant.imgRectangle120781)
    ]))));

/// A notifier that manages the state of a CategoryComedy according to the event that is dispatched to it.
class CategoryComedyNotifier extends StateNotifier<CategoryComedyState> {
  CategoryComedyNotifier(CategoryComedyState state) : super(state);
}
