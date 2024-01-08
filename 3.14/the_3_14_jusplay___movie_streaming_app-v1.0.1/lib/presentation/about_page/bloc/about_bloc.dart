import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/about_item_model.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/about_page/models/about_model.dart';
part 'about_event.dart';
part 'about_state.dart';

/// A bloc that manages the state of a About according to the event that is dispatched to it.
class AboutBloc extends Bloc<AboutEvent, AboutState> {
  AboutBloc(AboutState initialState) : super(initialState) {
    on<AboutInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AboutInitialEvent event,
    Emitter<AboutState> emit,
  ) async {
    emit(state.copyWith(
        aboutModelObj:
            state.aboutModelObj?.copyWith(aboutItemList: fillAboutItemList())));
  }

  List<AboutItemModel> fillAboutItemList() {
    return [
      AboutItemModel(
          menaMassoud: ImageConstant.imgRectangle12050,
          menaMassoud1: "Mena Massoud"),
      AboutItemModel(
          menaMassoud: ImageConstant.imgRectangle12050127x104,
          menaMassoud1: "Naomi Scott"),
      AboutItemModel(
          menaMassoud: ImageConstant.imgRectangle120501,
          menaMassoud1: "Will Smith"),
      AboutItemModel(
          menaMassoud: ImageConstant.imgRectangle120502,
          menaMassoud1: "Mena Massoud")
    ];
  }
}
