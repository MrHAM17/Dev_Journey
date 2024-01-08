// ignore_for_file: must_be_immutable

part of 'shop_bloc.dart';

/// Represents the state of Shop in the application.
class ShopState extends Equatable {
  ShopState({this.shopModelObj});

  ShopModel? shopModelObj;

  @override
  List<Object?> get props => [
        shopModelObj,
      ];
  ShopState copyWith({ShopModel? shopModelObj}) {
    return ShopState(
      shopModelObj: shopModelObj ?? this.shopModelObj,
    );
  }
}
