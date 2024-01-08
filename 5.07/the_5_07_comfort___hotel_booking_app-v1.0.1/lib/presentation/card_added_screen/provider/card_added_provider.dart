import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/card_added_screen/models/card_added_model.dart';import '../models/cardadded_item_model.dart';/// A provider class for the CardAddedScreen.
///
/// This provider manages the state of the CardAddedScreen, including the
/// current cardAddedModelObj

// ignore_for_file: must_be_immutable
class CardAddedProvider extends ChangeNotifier {CardAddedModel cardAddedModelObj = CardAddedModel();

@override void dispose() { super.dispose(); } 
 }
