import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/switch_account_bottomsheet/models/switch_account_model.dart';import '../models/switchaccount_item_model.dart';/// A provider class for the SwitchAccountBottomsheet.
///
/// This provider manages the state of the SwitchAccountBottomsheet, including the
/// current switchAccountModelObj

// ignore_for_file: must_be_immutable
class SwitchAccountProvider extends ChangeNotifier {SwitchAccountModel switchAccountModelObj = SwitchAccountModel();

@override void dispose() { super.dispose(); } 
 }
