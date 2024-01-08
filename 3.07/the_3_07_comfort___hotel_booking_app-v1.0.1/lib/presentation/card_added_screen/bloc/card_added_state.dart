// ignore_for_file: must_be_immutable

part of 'card_added_bloc.dart';

/// Represents the state of CardAdded in the application.
class CardAddedState extends Equatable {
  CardAddedState({this.cardAddedModelObj});

  CardAddedModel? cardAddedModelObj;

  @override
  List<Object?> get props => [
        cardAddedModelObj,
      ];
  CardAddedState copyWith({CardAddedModel? cardAddedModelObj}) {
    return CardAddedState(
      cardAddedModelObj: cardAddedModelObj ?? this.cardAddedModelObj,
    );
  }
}
