import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/drlist_item_model.dart';
import 'package:the_6_04_health_care/presentation/dr_list_screen/models/dr_list_model.dart';
part 'dr_list_state.dart';

final drListNotifier = StateNotifierProvider<DrListNotifier, DrListState>(
    (ref) => DrListNotifier(DrListState(
            drListModelObj: DrListModel(drlistItemList: [
          DrlistItemModel(
              drMarcusHorizon: ImageConstant.imgProfilePic,
              title: "Dr. Marcus Horizon",
              chardiologist: "Chardiologist",
              ratting: "4.7",
              distance: "800m away"),
          DrlistItemModel(
              drMarcusHorizon: ImageConstant.imgProfilePic111x111,
              title: "Dr. Maria Elena",
              chardiologist: "Chardiologist",
              ratting: "4.7",
              distance: "800m away"),
          DrlistItemModel(
              drMarcusHorizon: ImageConstant.imgProfilePic1,
              title: "Dr. Stefi Jessi",
              chardiologist: "Chardiologist",
              ratting: "4.7",
              distance: "800m away"),
          DrlistItemModel(
              drMarcusHorizon: ImageConstant.imgProfilePic2,
              title: "Dr. Gerty Cori",
              chardiologist: "Chardiologist",
              ratting: "4.7",
              distance: "800m away")
        ]))));

/// A notifier that manages the state of a DrList according to the event that is dispatched to it.
class DrListNotifier extends StateNotifier<DrListState> {
  DrListNotifier(DrListState state) : super(state);
}
