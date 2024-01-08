// ignore_for_file: must_be_immutable

part of 'my_order_bloc.dart';

/// Represents the state of MyOrder in the application.
class MyOrderState extends Equatable {
  MyOrderState({this.myOrderModelObj});

  MyOrderModel? myOrderModelObj;

  @override
  List<Object?> get props => [
        myOrderModelObj,
      ];
  MyOrderState copyWith({MyOrderModel? myOrderModelObj}) {
    return MyOrderState(
      myOrderModelObj: myOrderModelObj ?? this.myOrderModelObj,
    );
  }
}
