import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/listings_page/models/listings_model.dart';import '../models/listings_item_model.dart';/// A provider class for the ListingsPage.
///
/// This provider manages the state of the ListingsPage, including the
/// current listingsModelObj

// ignore_for_file: must_be_immutable
class ListingsProvider extends ChangeNotifier {ListingsModel listingsModelObj = ListingsModel();

@override void dispose() { super.dispose(); } 
 }
