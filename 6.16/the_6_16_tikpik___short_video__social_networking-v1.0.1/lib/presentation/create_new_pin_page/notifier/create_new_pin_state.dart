// ignore_for_file: must_be_immutable

part of 'create_new_pin_notifier.dart';

/// Represents the state of CreateNewPin in the application.
class CreateNewPinState extends Equatable {
  CreateNewPinState({this.createNewPinModelObj});

  CreateNewPinModel? createNewPinModelObj;

  @override
  List<Object?> get props => [
        createNewPinModelObj,
      ];

  CreateNewPinState copyWith({CreateNewPinModel? createNewPinModelObj}) {
    return CreateNewPinState(
      createNewPinModelObj: createNewPinModelObj ?? this.createNewPinModelObj,
    );
  }
}
