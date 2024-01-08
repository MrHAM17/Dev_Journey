// ignore_for_file: must_be_immutable

part of 'similiar_notifier.dart';

/// Represents the state of Similiar in the application.
class SimiliarState extends Equatable {
  SimiliarState({this.similiarModelObj});

  SimiliarModel? similiarModelObj;

  @override
  List<Object?> get props => [
        similiarModelObj,
      ];

  SimiliarState copyWith({SimiliarModel? similiarModelObj}) {
    return SimiliarState(
      similiarModelObj: similiarModelObj ?? this.similiarModelObj,
    );
  }
}
