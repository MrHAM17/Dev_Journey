import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/example_data_page/models/example_data_model.dart';import '../models/layout13_item_model.dart';/// A provider class for the ExampleDataPage.
///
/// This provider manages the state of the ExampleDataPage, including the
/// current exampleDataModelObj

// ignore_for_file: must_be_immutable
class ExampleDataProvider extends ChangeNotifier {ExampleDataModel exampleDataModelObj = ExampleDataModel();

@override void dispose() { super.dispose(); } 
 }
