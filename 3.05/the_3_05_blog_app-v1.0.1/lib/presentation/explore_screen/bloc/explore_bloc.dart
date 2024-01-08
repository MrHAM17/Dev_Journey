import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/stories1_item_model.dart';
import 'package:the_3_05_blog_app/presentation/explore_screen/models/explore_model.dart';
part 'explore_event.dart';
part 'explore_state.dart';

/// A bloc that manages the state of a Explore according to the event that is dispatched to it.
class ExploreBloc extends Bloc<ExploreEvent, ExploreState> {
  ExploreBloc(ExploreState initialState) : super(initialState) {
    on<ExploreInitialEvent>(_onInitialize);
  }

  List<Stories1ItemModel> fillStories1ItemList() {
    return [
      Stories1ItemModel(
          home: "LOGO",
          easyToUse: "Lorem Ipsum dolor set amet",
          duration: "16 days ago",
          time: "3 min read")
    ];
  }

  _onInitialize(
    ExploreInitialEvent event,
    Emitter<ExploreState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        exploreModelObj: state.exploreModelObj
            ?.copyWith(stories1ItemList: fillStories1ItemList())));
  }
}
