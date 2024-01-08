// ignore_for_file: must_be_immutable

part of 'all_activity_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AllActivity widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AllActivityEvent extends Equatable {}

/// Event that is dispatched when the AllActivity widget is first created.
class AllActivityInitialEvent extends AllActivityEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class onSelected extends AllActivityEvent {
  onSelected({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
