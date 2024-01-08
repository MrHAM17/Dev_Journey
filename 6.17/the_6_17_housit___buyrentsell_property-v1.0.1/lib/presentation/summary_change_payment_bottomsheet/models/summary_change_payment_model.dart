// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'layout1_item_model.dart';/// This class defines the variables used in the [summary_change_payment_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class SummaryChangePaymentModel extends Equatable {SummaryChangePaymentModel({this.layout1ItemList = const []}) {  }

List<Layout1ItemModel> layout1ItemList;

SummaryChangePaymentModel copyWith({List<Layout1ItemModel>? layout1ItemList}) { return SummaryChangePaymentModel(
layout1ItemList : layout1ItemList ?? this.layout1ItemList,
); } 
@override List<Object?> get props => [layout1ItemList];
 }
