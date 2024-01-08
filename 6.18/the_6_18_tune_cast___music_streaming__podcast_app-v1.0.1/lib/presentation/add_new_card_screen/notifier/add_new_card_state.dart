// ignore_for_file: must_be_immutable

part of 'add_new_card_notifier.dart';

/// Represents the state of AddNewCard in the application.
class AddNewCardState extends Equatable {
  AddNewCardState({
    this.nameController,
    this.cardNumberController,
    this.cvvController,
    this.addNewCardModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? cardNumberController;

  TextEditingController? cvvController;

  AddNewCardModel? addNewCardModelObj;

  @override
  List<Object?> get props => [
        nameController,
        cardNumberController,
        cvvController,
        addNewCardModelObj,
      ];

  AddNewCardState copyWith({
    TextEditingController? nameController,
    TextEditingController? cardNumberController,
    TextEditingController? cvvController,
    AddNewCardModel? addNewCardModelObj,
  }) {
    return AddNewCardState(
      nameController: nameController ?? this.nameController,
      cardNumberController: cardNumberController ?? this.cardNumberController,
      cvvController: cvvController ?? this.cvvController,
      addNewCardModelObj: addNewCardModelObj ?? this.addNewCardModelObj,
    );
  }
}
