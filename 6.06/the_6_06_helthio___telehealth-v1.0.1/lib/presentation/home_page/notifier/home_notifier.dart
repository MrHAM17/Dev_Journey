import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/categories_item_model.dart';
import '../models/home_item_model.dart';
import 'package:the_6_06_helthio___telehealth/presentation/home_page/models/home_model.dart';
part 'home_state.dart';

final homeNotifier = StateNotifierProvider<HomeNotifier, HomeState>(
    (ref) => HomeNotifier(HomeState(
        searchController: TextEditingController(),
        homeModelObj: HomeModel(categoriesItemList: [
          CategoriesItemModel(
              ambulance: ImageConstant.imgIconAmbulance,
              ambulance1: "Ambulance"),
          CategoriesItemModel(
              ambulance: ImageConstant.imgIconDoctor, ambulance1: "Doctor"),
          CategoriesItemModel(
              ambulance: ImageConstant.imgIconPharmacy, ambulance1: "Pharmacy"),
          CategoriesItemModel(
              ambulance: ImageConstant.imgIconHospital, ambulance1: "Hospital")
        ], homeItemList: [
          HomeItemModel(
              circleImage: ImageConstant.imgEllipse88,
              fortySeven: "4.7",
              drMarcusHorizon: "Dr. Marcus Horizon",
              chardiologist: "Chardiologist",
              distance: "800m away"),
          HomeItemModel(
              circleImage: ImageConstant.imgEllipse89,
              fortySeven: "4.7",
              drMarcusHorizon: "Dr. Maria Elena",
              chardiologist: "Chardiologist",
              distance: "800m away"),
          HomeItemModel(
              circleImage: ImageConstant.imgEllipse88,
              fortySeven: "4.7",
              drMarcusHorizon: "Dr. Marcus Horizon",
              chardiologist: "Chardiologist",
              distance: "800m away"),
          HomeItemModel(
              circleImage: ImageConstant.imgEllipse89,
              fortySeven: "4.7",
              drMarcusHorizon: "Dr. Maria Elena",
              chardiologist: "Chardiologist",
              distance: "800m away")
        ]))));

/// A notifier that manages the state of a Home according to the event that is dispatched to it.
class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(HomeState state) : super(state);
}
