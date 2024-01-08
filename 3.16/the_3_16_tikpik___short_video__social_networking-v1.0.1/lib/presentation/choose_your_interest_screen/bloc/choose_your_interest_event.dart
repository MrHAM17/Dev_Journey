// ignore_for_file: must_be_immutable

part of 'choose_your_interest_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChooseYourInterest widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChooseYourInterestEvent extends Equatable {}

/// Event that is dispatched when the ChooseYourInterest widget is first created.
class ChooseYourInterestInitialEvent extends ChooseYourInterestEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends ChooseYourInterestEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
