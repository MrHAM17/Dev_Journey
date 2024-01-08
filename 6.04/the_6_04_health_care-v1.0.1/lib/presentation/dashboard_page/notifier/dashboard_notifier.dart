import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/fortyseven_item_model.dart';
import '../models/doctor_item_model.dart';
import 'package:the_6_04_health_care/presentation/dashboard_page/models/dashboard_model.dart';
part 'dashboard_state.dart';

final dashboardNotifier =
    StateNotifierProvider<DashboardNotifier, DashboardState>(
        (ref) => DashboardNotifier(DashboardState(
            searchController: TextEditingController(),
            dashboardModelObj: DashboardModel(fortysevenItemList: [
              FortysevenItemModel(ticket: ImageConstant.imgTicket),
              FortysevenItemModel(ticket: ImageConstant.imgCalculator),
              FortysevenItemModel(ticket: ImageConstant.imgAmbulance),
              FortysevenItemModel(ticket: ImageConstant.imgCalendar)
            ], doctorItemList: [
              DoctorItemModel(
                  drMarcusHorizo: ImageConstant.imgEllipse27image,
                  drMarcusHorizo1: "Dr. Marcus Horizo",
                  chardiologist: "Chardiologist",
                  ratting: "4,7",
                  distance: "800m away"),
              DoctorItemModel(
                  drMarcusHorizo: ImageConstant.imgEllipse27image68x68,
                  drMarcusHorizo1: "Dr. Maria Elena",
                  chardiologist: "Psychologist",
                  ratting: "4,9",
                  distance: "1,5km away"),
              DoctorItemModel(
                  drMarcusHorizo: ImageConstant.imgEllipse27image1,
                  drMarcusHorizo1: "Dr. Stevi Jessi",
                  chardiologist: "Orthopedist",
                  ratting: "4,8",
                  distance: "2km away")
            ]))));

/// A notifier that manages the state of a Dashboard according to the event that is dispatched to it.
class DashboardNotifier extends StateNotifier<DashboardState> {
  DashboardNotifier(DashboardState state) : super(state);
}
