// ignore_for_file: must_be_immutable

part of 'payment_method_bloc.dart';

/// Represents the state of PaymentMethod in the application.
class PaymentMethodState extends Equatable {
  PaymentMethodState({
    this.inputsFiedController,
    this.paymentMethodModelObj,
  });

  TextEditingController? inputsFiedController;

  PaymentMethodModel? paymentMethodModelObj;

  @override
  List<Object?> get props => [
        inputsFiedController,
        paymentMethodModelObj,
      ];
  PaymentMethodState copyWith({
    TextEditingController? inputsFiedController,
    PaymentMethodModel? paymentMethodModelObj,
  }) {
    return PaymentMethodState(
      inputsFiedController: inputsFiedController ?? this.inputsFiedController,
      paymentMethodModelObj:
          paymentMethodModelObj ?? this.paymentMethodModelObj,
    );
  }
}
