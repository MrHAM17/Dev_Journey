// ignore_for_file: must_be_immutable

part of 'interests_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Interests widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InterestsEvent extends Equatable {}

/// Event that is dispatched when the Interests widget is first created.
class InterestsInitialEvent extends InterestsEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends InterestsEvent {
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
