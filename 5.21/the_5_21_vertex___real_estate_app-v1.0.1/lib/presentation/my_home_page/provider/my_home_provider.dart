import 'package:flutter/material.dart';import 'package:the_5_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_5_21_vertex___real_estate_app/presentation/my_home_page/models/my_home_model.dart';import '../models/list_item_model.dart';/// A provider class for the MyHomePage.
///
/// This provider manages the state of the MyHomePage, including the
/// current myHomeModelObj

// ignore_for_file: must_be_immutable
class MyHomeProvider extends ChangeNotifier {MyHomeModel myHomeModelObj = MyHomeModel();

@override void dispose() { super.dispose(); } 
 }
