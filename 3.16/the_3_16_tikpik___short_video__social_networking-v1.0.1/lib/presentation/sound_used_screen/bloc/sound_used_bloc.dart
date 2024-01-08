import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/soundused_item_model.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/sound_used_screen/models/sound_used_model.dart';part 'sound_used_event.dart';part 'sound_used_state.dart';/// A bloc that manages the state of a SoundUsed according to the event that is dispatched to it.
class SoundUsedBloc extends Bloc<SoundUsedEvent, SoundUsedState> {SoundUsedBloc(SoundUsedState initialState) : super(initialState) { on<SoundUsedInitialEvent>(_onInitialize); }

_onInitialize(SoundUsedInitialEvent event, Emitter<SoundUsedState> emit, ) async  { emit(state.copyWith(soundUsedModelObj: state.soundUsedModelObj?.copyWith(soundusedItemList: fillSoundusedItemList()))); } 
List<SoundusedItemModel> fillSoundusedItemList() { return [SoundusedItemModel(image: ImageConstant.imgImage200x121), SoundusedItemModel(image: ImageConstant.imgImage200x120), SoundusedItemModel(image: ImageConstant.imgImage1), SoundusedItemModel(image: ImageConstant.imgImage2), SoundusedItemModel(image: ImageConstant.imgImage3), SoundusedItemModel(image: ImageConstant.imgImage4)]; } 
 }
