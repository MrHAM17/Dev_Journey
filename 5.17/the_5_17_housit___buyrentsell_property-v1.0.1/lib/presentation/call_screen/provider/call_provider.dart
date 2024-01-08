import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/call_screen/models/call_model.dart';/// A provider class for the CallScreen.
///
/// This provider manages the state of the CallScreen, including the
/// current callModelObj

// ignore_for_file: must_be_immutable
class CallProvider extends ChangeNotifier {CallModel callModelObj = CallModel();

@override void dispose() { super.dispose(); } 
 }
