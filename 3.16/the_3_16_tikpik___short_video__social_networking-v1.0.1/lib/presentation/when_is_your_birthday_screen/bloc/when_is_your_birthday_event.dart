// ignore_for_file: must_be_immutable

part of 'when_is_your_birthday_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WhenIsYourBirthday widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WhenIsYourBirthdayEvent extends Equatable {}

/// Event that is dispatched when the WhenIsYourBirthday widget is first created.
class WhenIsYourBirthdayInitialEvent extends WhenIsYourBirthdayEvent {
  @override
  List<Object?> get props => [];
}
