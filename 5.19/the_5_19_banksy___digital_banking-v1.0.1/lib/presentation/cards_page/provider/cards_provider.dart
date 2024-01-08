import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/cards_page/models/cards_model.dart';
import '../models/cards_item_model.dart';

/// A provider class for the CardsPage.
///
/// This provider manages the state of the CardsPage, including the
/// current cardsModelObj

// ignore_for_file: must_be_immutable
class CardsProvider extends ChangeNotifier {
  CardsModel cardsModelObj = CardsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
