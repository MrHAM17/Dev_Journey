import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_21_vertex___real_estate_app/presentation/add_new_property_home_facts_screen/models/add_new_property_home_facts_model.dart';part 'add_new_property_home_facts_event.dart';part 'add_new_property_home_facts_state.dart';/// A bloc that manages the state of a AddNewPropertyHomeFacts according to the event that is dispatched to it.
class AddNewPropertyHomeFactsBloc extends Bloc<AddNewPropertyHomeFactsEvent, AddNewPropertyHomeFactsState> {AddNewPropertyHomeFactsBloc(AddNewPropertyHomeFactsState initialState) : super(initialState) { on<AddNewPropertyHomeFactsInitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown); }

_changeDropDown(ChangeDropDownEvent event, Emitter<AddNewPropertyHomeFactsState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
_onInitialize(AddNewPropertyHomeFactsInitialEvent event, Emitter<AddNewPropertyHomeFactsState> emit, ) async  { emit(state.copyWith(inputFieldsController: TextEditingController(), inputFieldsController1: TextEditingController(), inputFieldsController2: TextEditingController(), inputFieldsController3: TextEditingController(), inputFieldsController4: TextEditingController(), priceController: TextEditingController(), priceController1: TextEditingController())); emit(state.copyWith(addNewPropertyHomeFactsModelObj: state.addNewPropertyHomeFactsModelObj?.copyWith(dropdownItemList: fillDropdownItemList()))); } 
 }
