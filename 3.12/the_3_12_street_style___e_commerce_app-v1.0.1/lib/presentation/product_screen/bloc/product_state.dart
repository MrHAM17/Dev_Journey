// ignore_for_file: must_be_immutable

part of 'product_bloc.dart';

/// Represents the state of Product in the application.
class ProductState extends Equatable {
  ProductState({
    this.sliderIndex = 0,
    this.productModelObj,
  });

  ProductModel? productModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        productModelObj,
      ];
  ProductState copyWith({
    int? sliderIndex,
    ProductModel? productModelObj,
  }) {
    return ProductState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      productModelObj: productModelObj ?? this.productModelObj,
    );
  }
}
