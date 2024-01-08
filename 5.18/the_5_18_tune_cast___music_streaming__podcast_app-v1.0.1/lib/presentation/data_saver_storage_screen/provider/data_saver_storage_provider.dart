import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/data_saver_storage_screen/models/data_saver_storage_model.dart';/// A provider class for the DataSaverStorageScreen.
///
/// This provider manages the state of the DataSaverStorageScreen, including the
/// current dataSaverStorageModelObj

// ignore_for_file: must_be_immutable
class DataSaverStorageProvider extends ChangeNotifier {DataSaverStorageModel dataSaverStorageModelObj = DataSaverStorageModel();

bool isSelectedSwitch = false;

bool isSelectedSwitch1 = false;

bool isSelectedSwitch2 = false;

@override void dispose() { super.dispose(); } 
void changeSwitchBox1(bool value) { isSelectedSwitch = value; notifyListeners(); } 
void changeSwitchBox2(bool value) { isSelectedSwitch1 = value; notifyListeners(); } 
void changeSwitchBox3(bool value) { isSelectedSwitch2 = value; notifyListeners(); } 
 }
