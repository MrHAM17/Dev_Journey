import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/data_saver_storage_screen/models/data_saver_storage_model.dart';part 'data_saver_storage_state.dart';final dataSaverStorageNotifier = StateNotifierProvider<DataSaverStorageNotifier, DataSaverStorageState>((ref) => DataSaverStorageNotifier(DataSaverStorageState(isSelectedSwitch: false, isSelectedSwitch1: false, isSelectedSwitch2: false, dataSaverStorageModelObj: DataSaverStorageModel())));
/// A notifier that manages the state of a DataSaverStorage according to the event that is dispatched to it.
class DataSaverStorageNotifier extends StateNotifier<DataSaverStorageState> {DataSaverStorageNotifier(DataSaverStorageState state) : super(state);

void changeSwitchBox1(bool value) { state = state.copyWith(isSelectedSwitch: value); } 
void changeSwitchBox2(bool value) { state = state.copyWith(isSelectedSwitch1: value); } 
void changeSwitchBox3(bool value) { state = state.copyWith(isSelectedSwitch2: value); } 
 }
