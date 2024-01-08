import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/specials_item_model.dart';
import '../models/specials1_item_model.dart';
import '../models/specials2_item_model.dart';
import '../models/specials3_item_model.dart';
import '../models/specials4_item_model.dart';
import '../models/specials5_item_model.dart';
import 'package:the_6_20_movie_streaming/presentation/dashboard_page/models/dashboard_model.dart';
part 'dashboard_state.dart';

final dashboardNotifier =
    StateNotifierProvider<DashboardNotifier, DashboardState>(
        (ref) => DashboardNotifier(DashboardState(
                dashboardModelObj: DashboardModel(specialsItemList: [
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
            ], specials1ItemList: [
              Specials1ItemModel(
                  image: ImageConstant.imgThumbnailImage3,
                  title: "Jumanji The Next Level"),
              Specials1ItemModel(
                  image: ImageConstant.imgThumbnailImage4,
                  title: "Cloud Atlas"),
              Specials1ItemModel(
                  image: ImageConstant.imgThumbnailImage5,
                  title: "Charlie’s Angels"),
              Specials1ItemModel(
                  image: ImageConstant.imgThumbnailImage6, title: "Zombieland")
            ], specials2ItemList: [
              Specials2ItemModel(
                  iKillGiants: ImageConstant.imgThumbnailImage7,
                  title: "I Kill Giants"),
              Specials2ItemModel(
                  iKillGiants: ImageConstant.imgThumbnailImage8,
                  title: "Disney: Togo"),
              Specials2ItemModel(
                  iKillGiants: ImageConstant.imgThumbnailImage9,
                  title: "Angel has Fallen"),
              Specials2ItemModel(
                  iKillGiants: ImageConstant.imgThumbnailImage10,
                  title: "The Conjuring")
            ], specials3ItemList: [
              Specials3ItemModel(
                  lukas: ImageConstant.imgThumbnailImage11, title: "Lukas"),
              Specials3ItemModel(
                  lukas: ImageConstant.imgThumbnailImage12,
                  title: "Dark PhoeniX"),
              Specials3ItemModel(
                  lukas: ImageConstant.imgThumbnailImage13,
                  title: "Pirates of Caribean"),
              Specials3ItemModel(
                  lukas: ImageConstant.imgThumbnailImage6, title: "Zombieland")
            ], specials4ItemList: [
              Specials4ItemModel(
                  drama: ImageConstant.imgThumbnailImage60x90, drama1: "Drama"),
              Specials4ItemModel(
                  drama: ImageConstant.imgThumbnailImage14, drama1: "Action"),
              Specials4ItemModel(
                  drama: ImageConstant.imgThumbnailImage15, drama1: "Thriller"),
              Specials4ItemModel(
                  drama: ImageConstant.imgThumbnailImage16, drama1: "Drama")
            ], specials5ItemList: [
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
            ]))));

/// A notifier that manages the state of a Dashboard according to the event that is dispatched to it.
class DashboardNotifier extends StateNotifier<DashboardState> {
  DashboardNotifier(DashboardState state) : super(state);
}
