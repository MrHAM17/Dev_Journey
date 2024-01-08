import 'package:flutter/material.dart';import 'package:the_5_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_5_21_vertex___real_estate_app/presentation/select_virtual_app_screen/models/select_virtual_app_model.dart';import '../models/selectvirtualapp_item_model.dart';import 'package:flutter/material.dart';/// A provider class for the SelectVirtualAppScreen.
///
/// This provider manages the state of the SelectVirtualAppScreen, including the
/// current selectVirtualAppModelObj

// ignore_for_file: must_be_immutable
class SelectVirtualAppProvider extends ChangeNotifier {SelectVirtualAppModel selectVirtualAppModelObj = SelectVirtualAppModel();

@override void dispose() { super.dispose(); } 
 }
