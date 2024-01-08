// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'refundmethod_item_model.dart';/// This class defines the variables used in the [refund_method_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RefundMethodModel extends Equatable {RefundMethodModel({this.refundmethodItemList = const []}) {  }

List<RefundmethodItemModel> refundmethodItemList;

RefundMethodModel copyWith({List<RefundmethodItemModel>? refundmethodItemList}) { return RefundMethodModel(
refundmethodItemList : refundmethodItemList ?? this.refundmethodItemList,
); } 
@override List<Object?> get props => [refundmethodItemList];
 }
