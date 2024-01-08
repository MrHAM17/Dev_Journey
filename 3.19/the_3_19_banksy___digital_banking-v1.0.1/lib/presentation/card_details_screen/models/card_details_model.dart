// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'carddetails_item_model.dart';

/// This class defines the variables used in the [card_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CardDetailsModel extends Equatable {
  CardDetailsModel({this.carddetailsItemList = const []}) {}

  List<CarddetailsItemModel> carddetailsItemList;

  CardDetailsModel copyWith({List<CarddetailsItemModel>? carddetailsItemList}) {
    return CardDetailsModel(
      carddetailsItemList: carddetailsItemList ?? this.carddetailsItemList,
    );
  }

  @override
  List<Object?> get props => [carddetailsItemList];
}
