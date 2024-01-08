import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/specials_item_model.dart';
import '../models/specials1_item_model.dart';
import '../models/specials2_item_model.dart';
import '../models/specials3_item_model.dart';
import '../models/specials4_item_model.dart';
import '../models/specials5_item_model.dart';
import 'package:the_3_20_movie_streaming/presentation/dashboard_page/models/dashboard_model.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

/// A bloc that manages the state of a Dashboard according to the event that is dispatched to it.
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc(DashboardState initialState) : super(initialState) {
    on<DashboardInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DashboardInitialEvent event,
    Emitter<DashboardState> emit,
  ) async {
    emit(state.copyWith(
        dashboardModelObj: state.dashboardModelObj?.copyWith(
            specialsItemList: fillSpecialsItemList(),
            specials1ItemList: fillSpecials1ItemList(),
            specials2ItemList: fillSpecials2ItemList(),
            specials3ItemList: fillSpecials3ItemList(),
            specials4ItemList: fillSpecials4ItemList(),
            specials5ItemList: fillSpecials5ItemList())));
  }

  List<SpecialsItemModel> fillSpecialsItemList() {
    return [
      SpecialsItemModel(
          thePerfection: ImageConstant.imgThumbnailImage,
          title: "The Perfection"),
      SpecialsItemModel(
          thePerfection: ImageConstant.imgThumbnailImage140x90,
          title: "Radio Flash"),
      SpecialsItemModel(
          thePerfection: ImageConstant.imgThumbnailImage1,
          title: "Turner & Hooch"),
      SpecialsItemModel(
          thePerfection: ImageConstant.imgThumbnailImage2,
          title: "Stranger Things")
    ];
  }

  List<Specials1ItemModel> fillSpecials1ItemList() {
    return [
      Specials1ItemModel(
          image: ImageConstant.imgThumbnailImage3,
          title: "Jumanji The Next Level"),
      Specials1ItemModel(
          image: ImageConstant.imgThumbnailImage4, title: "Cloud Atlas"),
      Specials1ItemModel(
          image: ImageConstant.imgThumbnailImage5, title: "Charlie’s Angels"),
      Specials1ItemModel(
          image: ImageConstant.imgThumbnailImage6, title: "Zombieland")
    ];
  }

  List<Specials2ItemModel> fillSpecials2ItemList() {
    return [
      Specials2ItemModel(
          iKillGiants: ImageConstant.imgThumbnailImage7,
          title: "I Kill Giants"),
      Specials2ItemModel(
          iKillGiants: ImageConstant.imgThumbnailImage8, title: "Disney: Togo"),
      Specials2ItemModel(
          iKillGiants: ImageConstant.imgThumbnailImage9,
          title: "Angel has Fallen"),
      Specials2ItemModel(
          iKillGiants: ImageConstant.imgThumbnailImage10,
          title: "The Conjuring")
    ];
  }

  List<Specials3ItemModel> fillSpecials3ItemList() {
    return [
      Specials3ItemModel(
          lukas: ImageConstant.imgThumbnailImage11, title: "Lukas"),
      Specials3ItemModel(
          lukas: ImageConstant.imgThumbnailImage12, title: "Dark PhoeniX"),
      Specials3ItemModel(
          lukas: ImageConstant.imgThumbnailImage13,
          title: "Pirates of Caribean"),
      Specials3ItemModel(
          lukas: ImageConstant.imgThumbnailImage6, title: "Zombieland")
    ];
  }

  List<Specials4ItemModel> fillSpecials4ItemList() {
    return [
      Specials4ItemModel(
          drama: ImageConstant.imgThumbnailImage60x90, drama1: "Drama"),
      Specials4ItemModel(
          drama: ImageConstant.imgThumbnailImage14, drama1: "Action"),
      Specials4ItemModel(
          drama: ImageConstant.imgThumbnailImage15, drama1: "Thriller"),
      Specials4ItemModel(
          drama: ImageConstant.imgThumbnailImage16, drama1: "Drama")
    ];
  }

  List<Specials5ItemModel> fillSpecials5ItemList() {
    return [
      Specials5ItemModel(
          thePerfection: ImageConstant.imgThumbnailImage,
          title: "The Perfection"),
      Specials5ItemModel(
          thePerfection: ImageConstant.imgThumbnailImage140x90,
          title: "Radio Flash"),
      Specials5ItemModel(
          thePerfection: ImageConstant.imgThumbnailImage1,
          title: "Turner & Hooch"),
      Specials5ItemModel(
          thePerfection: ImageConstant.imgThumbnailImage2,
          title: "Stranger Things")
    ];
  }
}
