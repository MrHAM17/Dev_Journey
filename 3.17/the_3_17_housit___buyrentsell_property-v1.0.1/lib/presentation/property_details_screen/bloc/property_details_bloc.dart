import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/transactiontype_item_model.dart';import '../models/layout24_item_model.dart';import '../models/layout25_item_model.dart';import '../models/viewallreviews_item_model.dart';import '../models/propertydetails_item_model.dart';import 'package:the_3_17_housit___buyrentsell_property/presentation/property_details_screen/models/property_details_model.dart';part 'property_details_event.dart';part 'property_details_state.dart';/// A bloc that manages the state of a PropertyDetails according to the event that is dispatched to it.
class PropertyDetailsBloc extends Bloc<PropertyDetailsEvent, PropertyDetailsState> {PropertyDetailsBloc(PropertyDetailsState initialState) : super(initialState) { on<PropertyDetailsInitialEvent>(_onInitialize); on<UpdateChipViewEvent>(_updateChipView); on<ChangeDropDownEvent>(_changeDropDown); }

_onInitialize(PropertyDetailsInitialEvent event, Emitter<PropertyDetailsState> emit, ) async  { emit(state.copyWith(propertyDetailsModelObj: state.propertyDetailsModelObj?.copyWith(transactiontypeItemList: fillTransactiontypeItemList(), layout24ItemList: fillLayout24ItemList(), dropdownItemList: fillDropdownItemList(), layout25ItemList: fillLayout25ItemList(), viewallreviewsItemList: fillViewallreviewsItemList(), propertydetailsItemList: fillPropertydetailsItemList()))); } 
_updateChipView(UpdateChipViewEvent event, Emitter<PropertyDetailsState> emit, ) { List<TransactiontypeItemModel> newList = List<TransactiontypeItemModel>.from(state.propertyDetailsModelObj!.transactiontypeItemList); newList[event.index] = newList[event.index].copyWith(isSelected: event.isSelected); emit(state.copyWith(propertyDetailsModelObj: state.propertyDetailsModelObj?.copyWith(transactiontypeItemList: newList))); } 
_changeDropDown(ChangeDropDownEvent event, Emitter<PropertyDetailsState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
List<TransactiontypeItemModel> fillTransactiontypeItemList() { return List.generate(2, (index) => TransactiontypeItemModel()); } 
List<Layout24ItemModel> fillLayout24ItemList() { return [Layout24ItemModel(bedroom: ImageConstant.imgMdiBedEmpty, bedroomCounter: "2 Bedroom"), Layout24ItemModel(bedroom: ImageConstant.imgTelevisionPrimary, bedroomCounter: "1 Bathroom"), Layout24ItemModel(bedroom: ImageConstant.imgContrast, bedroomCounter: "2 Bedroom")]; } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
List<Layout25ItemModel> fillLayout25ItemList() { return [Layout25ItemModel(hospitalCounter: "2 Hospital"), Layout25ItemModel(hospitalCounter: "4 Gas stations"), Layout25ItemModel(hospitalCounter: "2 Schools")]; } 
List<ViewallreviewsItemModel> fillViewallreviewsItemList() { return [ViewallreviewsItemModel(close: ImageConstant.imgClose, text: "4.9", from: "From", text1: "112", reviewers: "reviewers")]; } 
List<PropertydetailsItemModel> fillPropertydetailsItemList() { return [PropertydetailsItemModel(wingsTower: ImageConstant.imgShape2, price: " 220", month: "/month", wingsTower1: "Wings Tower", text: "4.2", jakartaIndonesia: "Jakarta, Indonesia", skyDandelions: ImageConstant.imgShape1, price1: " 190", month1: "/month", skyDandelions1: "Sky Dandelions ", text1: "4.9", jakartaIndonesia1: "Jakarta, Indonesia"), PropertydetailsItemModel(wingsTower: ImageConstant.imgShape160x144, price: " 220", month: "/month", wingsTower1: "Wings Tower", text: "4.2", jakartaIndonesia: "Jakarta, Indonesia", skyDandelions: ImageConstant.imgShape3, price1: " 220", month1: "/month", skyDandelions1: "Wings Tower", text1: "4.2", jakartaIndonesia1: "Jakarta, Indonesia")]; } 
 }