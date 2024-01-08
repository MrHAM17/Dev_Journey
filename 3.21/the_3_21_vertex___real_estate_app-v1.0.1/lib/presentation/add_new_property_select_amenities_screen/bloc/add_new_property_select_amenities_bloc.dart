import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/options_item_model.dart';import 'package:the_3_21_vertex___real_estate_app/presentation/add_new_property_select_amenities_screen/models/add_new_property_select_amenities_model.dart';part 'add_new_property_select_amenities_event.dart';part 'add_new_property_select_amenities_state.dart';/// A bloc that manages the state of a AddNewPropertySelectAmenities according to the event that is dispatched to it.
class AddNewPropertySelectAmenitiesBloc extends Bloc<AddNewPropertySelectAmenitiesEvent, AddNewPropertySelectAmenitiesState> {AddNewPropertySelectAmenitiesBloc(AddNewPropertySelectAmenitiesState initialState) : super(initialState) { on<AddNewPropertySelectAmenitiesInitialEvent>(_onInitialize); on<UpdateChipViewEvent>(_updateChipView); }

_onInitialize(AddNewPropertySelectAmenitiesInitialEvent event, Emitter<AddNewPropertySelectAmenitiesState> emit, ) async  { emit(state.copyWith(addNewPropertySelectAmenitiesModelObj: state.addNewPropertySelectAmenitiesModelObj?.copyWith(optionsItemList: fillOptionsItemList()))); } 
_updateChipView(UpdateChipViewEvent event, Emitter<AddNewPropertySelectAmenitiesState> emit, ) { List<OptionsItemModel> newList = List<OptionsItemModel>.from(state.addNewPropertySelectAmenitiesModelObj!.optionsItemList); newList[event.index] = newList[event.index].copyWith(isSelected: event.isSelected); emit(state.copyWith(addNewPropertySelectAmenitiesModelObj: state.addNewPropertySelectAmenitiesModelObj?.copyWith(optionsItemList: newList))); } 
List<OptionsItemModel> fillOptionsItemList() { return List.generate(8, (index) => OptionsItemModel()); } 
 }