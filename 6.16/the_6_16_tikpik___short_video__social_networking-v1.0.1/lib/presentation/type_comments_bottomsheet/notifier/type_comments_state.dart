// ignore_for_file: must_be_immutable

part of 'type_comments_notifier.dart';

/// Represents the state of TypeComments in the application.
class TypeCommentsState extends Equatable {
  TypeCommentsState({
    this.categoriesGiftComponentAdditioController,
    this.typeCommentsModelObj,
  });

  TextEditingController? categoriesGiftComponentAdditioController;

  TypeCommentsModel? typeCommentsModelObj;

  @override
  List<Object?> get props => [
        categoriesGiftComponentAdditioController,
        typeCommentsModelObj,
      ];

  TypeCommentsState copyWith({
    TextEditingController? categoriesGiftComponentAdditioController,
    TypeCommentsModel? typeCommentsModelObj,
  }) {
    return TypeCommentsState(
      categoriesGiftComponentAdditioController:
          categoriesGiftComponentAdditioController ??
              this.categoriesGiftComponentAdditioController,
      typeCommentsModelObj: typeCommentsModelObj ?? this.typeCommentsModelObj,
    );
  }
}
