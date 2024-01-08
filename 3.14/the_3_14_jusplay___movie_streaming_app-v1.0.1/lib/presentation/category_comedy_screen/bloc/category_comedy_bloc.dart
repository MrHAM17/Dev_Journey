import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/categorycomedy_item_model.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/category_comedy_screen/models/category_comedy_model.dart';
part 'category_comedy_event.dart';
part 'category_comedy_state.dart';

/// A bloc that manages the state of a CategoryComedy according to the event that is dispatched to it.
class CategoryComedyBloc
    extends Bloc<CategoryComedyEvent, CategoryComedyState> {
  CategoryComedyBloc(CategoryComedyState initialState) : super(initialState) {
    on<CategoryComedyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CategoryComedyInitialEvent event,
    Emitter<CategoryComedyState> emit,
  ) async {
    emit(state.copyWith(
        categoryComedyModelObj: state.categoryComedyModelObj
            ?.copyWith(categorycomedyItemList: fillCategorycomedyItemList())));
  }

  List<CategorycomedyItemModel> fillCategorycomedyItemList() {
    return [
      CategorycomedyItemModel(rectangle: ImageConstant.imgRectangle12078),
      CategorycomedyItemModel(
          rectangle: ImageConstant.imgRectangle12078140x102),
      CategorycomedyItemModel(rectangle: ImageConstant.imgRectangle120781)
    ];
  }
}
