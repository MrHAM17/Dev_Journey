import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/card_details_screen/models/card_details_model.dart';
import '../models/carddetails_item_model.dart';

/// A provider class for the CardDetailsScreen.
///
/// This provider manages the state of the CardDetailsScreen, including the
/// current cardDetailsModelObj

// ignore_for_file: must_be_immutable
class CardDetailsProvider extends ChangeNotifier {
  CardDetailsModel cardDetailsModelObj = CardDetailsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
