import 'layout15_item_model.dart';import 'layout17_item_model.dart';import '../../../core/app_export.dart';import 'shape_item_model.dart';import 'layout19_item_model.dart';import 'layout21_item_model.dart';import 'layout22_item_model.dart';import 'seventy_item_model.dart';class EditFormModel {List<Layout15ItemModel> layout15ItemList = List.generate(2,(index) =>Layout15ItemModel());

List<Layout17ItemModel> layout17ItemList = List.generate(5,(index) =>Layout17ItemModel());

List<ShapeItemModel> shapeItemList = [ShapeItemModel(shape:ImageConstant.imgShape52),ShapeItemModel(shape:ImageConstant.imgShape53),ShapeItemModel(shape:ImageConstant.imgShape21),ShapeItemModel(shape:ImageConstant.imgShape21)];

List<Layout19ItemModel> layout19ItemList = List.generate(2,(index) =>Layout19ItemModel());

List<Layout21ItemModel> layout21ItemList = [Layout21ItemModel(bedroom: "Bedroom",text: "2"),Layout21ItemModel(bedroom: "Bathroom",text: "2"),Layout21ItemModel(bedroom: "Balcony",text: "1")];

List<Layout22ItemModel> layout22ItemList = List.generate(4,(index) =>Layout22ItemModel());

List<SeventyItemModel> seventyItemList = List.generate(7,(index) =>SeventyItemModel());

 }
