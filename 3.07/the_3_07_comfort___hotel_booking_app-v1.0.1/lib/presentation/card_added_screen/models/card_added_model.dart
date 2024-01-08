// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'cardadded_item_model.dart';/// This class defines the variables used in the [card_added_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CardAddedModel extends Equatable {CardAddedModel({this.cardaddedItemList = const []}) {  }

List<CardaddedItemModel> cardaddedItemList;

CardAddedModel copyWith({List<CardaddedItemModel>? cardaddedItemList}) { return CardAddedModel(
cardaddedItemList : cardaddedItemList ?? this.cardaddedItemList,
); } 
@override List<Object?> get props => [cardaddedItemList];
 }
