// ignore_for_file: must_be_immutable

part of 'payment_bloc.dart';

/// Represents the state of Payment in the application.
class PaymentState extends Equatable {
  PaymentState({
    this.applePayController,
    this.sliderIndex = 0,
    this.paymentModelObj,
  });

  TextEditingController? applePayController;

  PaymentModel? paymentModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        applePayController,
        sliderIndex,
        paymentModelObj,
      ];
  PaymentState copyWith({
    TextEditingController? applePayController,
    int? sliderIndex,
    PaymentModel? paymentModelObj,
  }) {
    return PaymentState(
      applePayController: applePayController ?? this.applePayController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      paymentModelObj: paymentModelObj ?? this.paymentModelObj,
    );
  }
}
