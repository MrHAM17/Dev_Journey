import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/layout13_item_model.dart';
import 'package:the_3_17_housit___buyrentsell_property/presentation/example_data_page/models/example_data_model.dart';
part 'example_data_event.dart';
part 'example_data_state.dart';

/// A bloc that manages the state of a ExampleData according to the event that is dispatched to it.
class ExampleDataBloc extends Bloc<ExampleDataEvent, ExampleDataState> {
  ExampleDataBloc(ExampleDataState initialState) : super(initialState) {
    on<ExampleDataInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExampleDataInitialEvent event,
    Emitter<ExampleDataState> emit,
  ) async {
    emit(state.copyWith(
        exampleDataModelObj: state.exampleDataModelObj?.copyWith(
      layout13ItemList: fillLayout13ItemList(),
    )));
  }

  List<Layout13ItemModel> fillLayout13ItemList() {
    return [
      Layout13ItemModel(
          image: ImageConstant.imgShape104x126,
          skyDandelionsApartment: "Sky Dandelions\nApartment",
          text: "4.2 ",
          jakartaIndonesia: "Jakarta, Indonesia"),
      Layout13ItemModel(
          skyDandelionsApartment: "Sky Dandelions\nApartment",
          text: "4.2 ",
          jakartaIndonesia: "Jakarta, Indonesia")
    ];
  }
}
