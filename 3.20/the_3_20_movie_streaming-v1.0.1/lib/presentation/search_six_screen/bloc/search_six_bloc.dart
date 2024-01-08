import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/movies7_item_model.dart';
import '../models/movies8_item_model.dart';
import '../models/movies9_item_model.dart';
import 'package:the_3_20_movie_streaming/presentation/search_six_screen/models/search_six_model.dart';
part 'search_six_event.dart';
part 'search_six_state.dart';

/// A bloc that manages the state of a SearchSix according to the event that is dispatched to it.
class SearchSixBloc extends Bloc<SearchSixEvent, SearchSixState> {
  SearchSixBloc(SearchSixState initialState) : super(initialState) {
    on<SearchSixInitialEvent>(_onInitialize);
  }

  List<Movies7ItemModel> fillMovies7ItemList() {
    return [
      Movies7ItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage1,
          title: "Turner & Hooch",
          title1: "Sub-Title"),
      Movies7ItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage26,
          title: "Hellen",
          title1: "What a happy Family"),
      Movies7ItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage24,
          title: "Child’s Play",
          title1: "Sub-Title")
    ];
  }

  List<Movies8ItemModel> fillMovies8ItemList() {
    return [
      Movies8ItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage1,
          title: "Turner & Hooch",
          title1: "Sub-Title"),
      Movies8ItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage26,
          title: "Hellen",
          title1: "What a happy Family"),
      Movies8ItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage24,
          title: "Child’s Play",
          title1: "Sub-Title")
    ];
  }

  List<Movies9ItemModel> fillMovies9ItemList() {
    return [
      Movies9ItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage1,
          title: "Turner & Hooch",
          title1: "Sub-Title"),
      Movies9ItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage24,
          title: "Child’s Play",
          title1: "Sub-Title")
    ];
  }

  _onInitialize(
    SearchSixInitialEvent event,
    Emitter<SearchSixState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        searchSixModelObj: state.searchSixModelObj?.copyWith(
            movies7ItemList: fillMovies7ItemList(),
            movies8ItemList: fillMovies8ItemList(),
            movies9ItemList: fillMovies9ItemList())));
  }
}
