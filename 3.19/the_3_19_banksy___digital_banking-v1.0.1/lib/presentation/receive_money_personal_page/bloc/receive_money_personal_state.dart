// ignore_for_file: must_be_immutable

part of 'receive_money_personal_bloc.dart';

/// Represents the state of ReceiveMoneyPersonal in the application.
class ReceiveMoneyPersonalState extends Equatable {
  ReceiveMoneyPersonalState({
    this.firstNameController,
    this.lastNameController,
    this.emailController,
    this.countryController,
    this.amountController,
    this.inputsController,
    this.inputsController1,
    this.receiveMoneyPersonalModelObj,
  });

  TextEditingController? firstNameController;

  TextEditingController? lastNameController;

  TextEditingController? emailController;

  TextEditingController? countryController;

  TextEditingController? amountController;

  TextEditingController? inputsController;

  TextEditingController? inputsController1;

  ReceiveMoneyPersonalModel? receiveMoneyPersonalModelObj;

  @override
  List<Object?> get props => [
        firstNameController,
        lastNameController,
        emailController,
        countryController,
        amountController,
        inputsController,
        inputsController1,
        receiveMoneyPersonalModelObj,
      ];
  ReceiveMoneyPersonalState copyWith({
    TextEditingController? firstNameController,
    TextEditingController? lastNameController,
    TextEditingController? emailController,
    TextEditingController? countryController,
    TextEditingController? amountController,
    TextEditingController? inputsController,
    TextEditingController? inputsController1,
    ReceiveMoneyPersonalModel? receiveMoneyPersonalModelObj,
  }) {
    return ReceiveMoneyPersonalState(
      firstNameController: firstNameController ?? this.firstNameController,
      lastNameController: lastNameController ?? this.lastNameController,
      emailController: emailController ?? this.emailController,
      countryController: countryController ?? this.countryController,
      amountController: amountController ?? this.amountController,
      inputsController: inputsController ?? this.inputsController,
      inputsController1: inputsController1 ?? this.inputsController1,
      receiveMoneyPersonalModelObj:
          receiveMoneyPersonalModelObj ?? this.receiveMoneyPersonalModelObj,
    );
  }
}
