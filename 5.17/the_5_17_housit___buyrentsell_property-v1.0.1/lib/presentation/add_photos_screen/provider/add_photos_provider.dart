import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/add_photos_screen/models/add_photos_model.dart';import '../models/gallery_item_model.dart';/// A provider class for the AddPhotosScreen.
///
/// This provider manages the state of the AddPhotosScreen, including the
/// current addPhotosModelObj

// ignore_for_file: must_be_immutable
class AddPhotosProvider extends ChangeNotifier {AddPhotosModel addPhotosModelObj = AddPhotosModel();

@override void dispose() { super.dispose(); } 
 }
