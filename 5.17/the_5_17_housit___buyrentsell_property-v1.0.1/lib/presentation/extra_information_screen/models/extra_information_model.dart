import 'layout6_item_model.dart';import '../../../core/app_export.dart';import 'layout8_item_model.dart';import 'layout9_item_model.dart';import 'layout11_item_model.dart';class ExtraInformationModel {List<Layout6ItemModel> layout6ItemList = List.generate(2,(index) =>Layout6ItemModel());

List<Layout8ItemModel> layout8ItemList = [Layout8ItemModel(bedroom: "Bedroom",text: "3"),Layout8ItemModel(bedroom: "Bathroom",text: "2"),Layout8ItemModel(bedroom: "Balcony",text: "2")];

List<Layout9ItemModel> layout9ItemList = List.generate(4,(index) =>Layout9ItemModel());

List<Layout11ItemModel> layout11ItemList = List.generate(7,(index) =>Layout11ItemModel());

 }
