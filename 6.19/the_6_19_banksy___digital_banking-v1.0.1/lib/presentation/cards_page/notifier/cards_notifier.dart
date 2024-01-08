import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/cards_item_model.dart';
import 'package:the_6_19_banksy___digital_banking/presentation/cards_page/models/cards_model.dart';
part 'cards_state.dart';

final cardsNotifier = StateNotifierProvider<CardsNotifier, CardsState>(
    (ref) => CardsNotifier(CardsState(
            cardsModelObj: CardsModel(cardsItemList: [
          CardsItemModel(
              jonathanAnderson: "Jonathan Anderson",
              text: "1222 3443 9881 1222",
              balance: "Balance",
              price: " 31,250"),
          CardsItemModel(
              jonathanAnderson: "Jonathan Anderson",
              text: "1222 3443 9881 1222",
              balance: "Balance",
              price: " 31,250")
        ]))));

/// A notifier that manages the state of a Cards according to the event that is dispatched to it.
class CardsNotifier extends StateNotifier<CardsState> {
  CardsNotifier(CardsState state) : super(state);
}
