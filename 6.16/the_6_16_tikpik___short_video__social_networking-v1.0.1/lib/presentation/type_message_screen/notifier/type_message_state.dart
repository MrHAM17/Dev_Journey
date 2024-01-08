// ignore_for_file: must_be_immutable

part of 'type_message_notifier.dart';

/// Represents the state of TypeMessage in the application.
class TypeMessageState extends Equatable {
  TypeMessageState({
    this.userController,
    this.typeMessageModelObj,
  });

  TextEditingController? userController;

  TypeMessageModel? typeMessageModelObj;

  @override
  List<Object?> get props => [
        userController,
        typeMessageModelObj,
      ];

  TypeMessageState copyWith({
    TextEditingController? userController,
    TypeMessageModel? typeMessageModelObj,
  }) {
    return TypeMessageState(
      userController: userController ?? this.userController,
      typeMessageModelObj: typeMessageModelObj ?? this.typeMessageModelObj,
    );
  }
}
