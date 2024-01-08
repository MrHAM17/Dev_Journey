import 'package:flutter/material.dart';
import 'package:the_5_04_health_care/core/app_export.dart';
import 'package:the_5_04_health_care/presentation/dr_list_screen/models/dr_list_model.dart';
import '../models/drlist_item_model.dart';

/// A provider class for the DrListScreen.
///
/// This provider manages the state of the DrListScreen, including the
/// current drListModelObj

// ignore_for_file: must_be_immutable
class DrListProvider extends ChangeNotifier {
  DrListModel drListModelObj = DrListModel();

  @override
  void dispose() {
    super.dispose();
  }
}
