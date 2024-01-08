import 'package:flutter/material.dart';
import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_5_17_housit___buyrentsell_property/presentation/select_location_bottomsheet/models/select_location_model.dart';

/// A provider class for the SelectLocationBottomsheet.
///
/// This provider manages the state of the SelectLocationBottomsheet, including the
/// current selectLocationModelObj
class SelectLocationProvider extends ChangeNotifier {
  SelectLocationModel selectLocationModelObj = SelectLocationModel();

  @override
  void dispose() {
    super.dispose();
  }
}
