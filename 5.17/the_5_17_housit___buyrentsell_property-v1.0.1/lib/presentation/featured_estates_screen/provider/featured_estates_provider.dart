import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/featured_estates_screen/models/featured_estates_model.dart';import '../models/featuredestates_item_model.dart';/// A provider class for the FeaturedEstatesScreen.
///
/// This provider manages the state of the FeaturedEstatesScreen, including the
/// current featuredEstatesModelObj

// ignore_for_file: must_be_immutable
class FeaturedEstatesProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

FeaturedEstatesModel featuredEstatesModelObj = FeaturedEstatesModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
