import 'package:flutter/material.dart';
import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_5_17_housit___buyrentsell_property/presentation/empty_map_screen/models/empty_map_model.dart';

/// A provider class for the EmptyMapScreen.
///
/// This provider manages the state of the EmptyMapScreen, including the
/// current emptyMapModelObj
class EmptyMapProvider extends ChangeNotifier {
  EmptyMapModel emptyMapModelObj = EmptyMapModel();

  @override
  void dispose() {
    super.dispose();
  }
}
