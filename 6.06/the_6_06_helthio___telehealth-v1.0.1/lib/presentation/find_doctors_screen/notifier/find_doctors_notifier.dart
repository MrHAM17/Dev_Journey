import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/finddoctors_item_model.dart';
import '../models/doctors_item_model.dart';
import 'package:the_6_06_helthio___telehealth/presentation/find_doctors_screen/models/find_doctors_model.dart';
part 'find_doctors_state.dart';

final findDoctorsNotifier =
    StateNotifierProvider<FindDoctorsNotifier, FindDoctorsState>(
        (ref) => FindDoctorsNotifier(FindDoctorsState(
            searchController: TextEditingController(),
            findDoctorsModelObj: FindDoctorsModel(finddoctorsItemList: [
              FinddoctorsItemModel(
                  general: ImageConstant.imgIconDoctor, general1: "General"),
              FinddoctorsItemModel(
                  general: ImageConstant.imgIconLungs, general1: "Lungs"),
              FinddoctorsItemModel(
                  general: ImageConstant.imgIconDentist, general1: "Dentist"),
              FinddoctorsItemModel(
                  general: ImageConstant.imgIconPsychiatrist,
                  general1: "Psychiatrist"),
              FinddoctorsItemModel(
                  general: ImageConstant.imgSearch, general1: "Covid-19"),
              FinddoctorsItemModel(
                  general: ImageConstant.imgIconSyringe, general1: "Surgeon"),
              FinddoctorsItemModel(
                  general: ImageConstant.imgIconCardiologist,
                  general1: "Cardio")
            ], doctorsItemList: [
              DoctorsItemModel(
                  drMarcus: ImageConstant.imgEllipse8864x64,
                  drMarcus1: "Dr. Marcus"),
              DoctorsItemModel(
                  drMarcus: ImageConstant.imgEllipse881,
                  drMarcus1: "Dr. Maria"),
              DoctorsItemModel(
                  drMarcus: ImageConstant.imgEllipse882,
                  drMarcus1: "Dr. Stevi"),
              DoctorsItemModel(
                  drMarcus: ImageConstant.imgRectangle961,
                  drMarcus1: "Dr. Luke")
            ]))));

/// A notifier that manages the state of a FindDoctors according to the event that is dispatched to it.
class FindDoctorsNotifier extends StateNotifier<FindDoctorsState> {
  FindDoctorsNotifier(FindDoctorsState state) : super(state);
}
