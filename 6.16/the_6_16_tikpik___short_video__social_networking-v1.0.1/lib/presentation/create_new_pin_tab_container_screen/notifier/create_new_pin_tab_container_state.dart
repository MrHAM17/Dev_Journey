// ignore_for_file: must_be_immutable

part of 'create_new_pin_tab_container_notifier.dart';

/// Represents the state of CreateNewPinTabContainer in the application.
class CreateNewPinTabContainerState extends Equatable {
  CreateNewPinTabContainerState({this.createNewPinTabContainerModelObj});

  CreateNewPinTabContainerModel? createNewPinTabContainerModelObj;

  @override
  List<Object?> get props => [
        createNewPinTabContainerModelObj,
      ];

  CreateNewPinTabContainerState copyWith(
      {CreateNewPinTabContainerModel? createNewPinTabContainerModelObj}) {
    return CreateNewPinTabContainerState(
      createNewPinTabContainerModelObj: createNewPinTabContainerModelObj ??
          this.createNewPinTabContainerModelObj,
    );
  }
}
