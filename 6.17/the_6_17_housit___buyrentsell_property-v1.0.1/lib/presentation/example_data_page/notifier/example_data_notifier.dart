import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/layout13_item_model.dart';
import 'package:the_6_17_housit___buyrentsell_property/presentation/example_data_page/models/example_data_model.dart';
part 'example_data_state.dart';

final exampleDataNotifier =
    StateNotifierProvider<ExampleDataNotifier, ExampleDataState>(
  (ref) => ExampleDataNotifier(ExampleDataState(
    exampleDataModelObj: ExampleDataModel(layout13ItemList: [
      Layout13ItemModel(
          image: ImageConstant.imgShape104x126,
          skyDandelionsApartment: "Sky Dandelions\nApartment",
          text: "4.2 ",
          jakartaIndonesia: "Jakarta, Indonesia"),
      Layout13ItemModel(
          skyDandelionsApartment: "Sky Dandelions\nApartment",
          text: "4.2 ",
          jakartaIndonesia: "Jakarta, Indonesia")
    ]),
  )),
);

/// A notifier that manages the state of a ExampleData according to the event that is dispatched to it.
class ExampleDataNotifier extends StateNotifier<ExampleDataState> {
  ExampleDataNotifier(ExampleDataState state) : super(state) {}
}
