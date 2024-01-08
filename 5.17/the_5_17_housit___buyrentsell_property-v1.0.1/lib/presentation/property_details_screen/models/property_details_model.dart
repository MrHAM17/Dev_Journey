import 'transactiontype_item_model.dart';import '../../../core/app_export.dart';import 'layout24_item_model.dart';import 'package:the_5_17_housit___buyrentsell_property/data/models/selectionPopupModel/selection_popup_model.dart';import 'layout25_item_model.dart';import 'viewallreviews_item_model.dart';import 'propertydetails_item_model.dart';class PropertyDetailsModel {List<TransactiontypeItemModel> transactiontypeItemList = List.generate(2,(index) =>TransactiontypeItemModel());

List<Layout24ItemModel> layout24ItemList = [Layout24ItemModel(bedroom:ImageConstant.imgMdiBedEmpty,bedroomCounter: "2 Bedroom"),Layout24ItemModel(bedroom:ImageConstant.imgTelevisionPrimary,bedroomCounter: "1 Bathroom"),Layout24ItemModel(bedroom:ImageConstant.imgContrast,bedroomCounter: "2 Bedroom")];

List<SelectionPopupModel> dropdownItemList = [SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)];

List<Layout25ItemModel> layout25ItemList = [Layout25ItemModel(hospitalCounter: "2 Hospital"),Layout25ItemModel(hospitalCounter: "4 Gas stations"),Layout25ItemModel(hospitalCounter: "2 Schools")];

List<ViewallreviewsItemModel> viewallreviewsItemList = [ViewallreviewsItemModel(close:ImageConstant.imgClose,text: "4.9",from: "From",text1: "112",reviewers: "reviewers")];

List<PropertydetailsItemModel> propertydetailsItemList = [PropertydetailsItemModel(wingsTower:ImageConstant.imgShape2,price: " 220",month: "/month",wingsTower1: "Wings Tower",text: "4.2",jakartaIndonesia: "Jakarta, Indonesia",skyDandelions:ImageConstant.imgShape1,price1: " 190",month1: "/month",skyDandelions1: "Sky Dandelions ",text1: "4.9",jakartaIndonesia1: "Jakarta, Indonesia"),PropertydetailsItemModel(wingsTower:ImageConstant.imgShape160x144,price: " 220",month: "/month",wingsTower1: "Wings Tower",text: "4.2",jakartaIndonesia: "Jakarta, Indonesia",skyDandelions:ImageConstant.imgShape3,price1: " 220",month1: "/month",skyDandelions1: "Wings Tower",text1: "4.2",jakartaIndonesia1: "Jakarta, Indonesia")];

 }
