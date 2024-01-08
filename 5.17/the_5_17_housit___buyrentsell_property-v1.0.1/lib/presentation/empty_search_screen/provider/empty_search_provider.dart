import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/empty_search_screen/models/empty_search_model.dart';/// A provider class for the EmptySearchScreen.
///
/// This provider manages the state of the EmptySearchScreen, including the
/// current emptySearchModelObj

// ignore_for_file: must_be_immutable
class EmptySearchProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

EmptySearchModel emptySearchModelObj = EmptySearchModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
