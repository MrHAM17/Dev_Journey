// ignore_for_file: must_be_immutable

part of 'all_activity_dropdown_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AllActivityDropdown widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AllActivityDropdownEvent extends Equatable {}

/// Event that is dispatched when the AllActivityDropdown widget is first created.
class AllActivityDropdownInitialEvent extends AllActivityDropdownEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class onSelected extends AllActivityDropdownEvent {
  onSelected({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
