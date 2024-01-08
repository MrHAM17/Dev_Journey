// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'card_item_model.dart';

/// This class defines the variables used in the [payment_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PaymentModel extends Equatable {
  PaymentModel({this.cardItemList = const []}) {}

  List<CardItemModel> cardItemList;

  PaymentModel copyWith({List<CardItemModel>? cardItemList}) {
    return PaymentModel(
      cardItemList: cardItemList ?? this.cardItemList,
    );
  }

  @override
  List<Object?> get props => [cardItemList];
}
