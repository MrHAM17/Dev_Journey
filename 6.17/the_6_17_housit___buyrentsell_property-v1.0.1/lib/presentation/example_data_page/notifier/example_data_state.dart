// ignore_for_file: must_be_immutable

part of 'example_data_notifier.dart';

/// Represents the state of ExampleData in the application.
class ExampleDataState extends Equatable {
  ExampleDataState({this.exampleDataModelObj});

  ExampleDataModel? exampleDataModelObj;

  @override
  List<Object?> get props => [
        exampleDataModelObj,
      ];

  ExampleDataState copyWith({ExampleDataModel? exampleDataModelObj}) {
    return ExampleDataState(
      exampleDataModelObj: exampleDataModelObj ?? this.exampleDataModelObj,
    );
  }
}
