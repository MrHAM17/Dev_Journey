// ignore_for_file: must_be_immutable

part of 'fill_your_profile_blank_form_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FillYourProfileBlankForm widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FillYourProfileBlankFormEvent extends Equatable {}

/// Event that is dispatched when the FillYourProfileBlankForm widget is first created.
class FillYourProfileBlankFormInitialEvent
    extends FillYourProfileBlankFormEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code
class ChangeCountryEvent extends FillYourProfileBlankFormEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}
