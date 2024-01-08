import 'layout15_item_model.dart';import 'layout17_item_model.dart';import '../../../core/app_export.dart';import 'shape_item_model.dart';import 'layout19_item_model.dart';import 'layout21_item_model.dart';import 'layout22_item_model.dart';import 'seventy_item_model.dart';/// This class defines the variables used in the [edit_form_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class EditFormModel {Rx<List<Layout15ItemModel>> layout15ItemList = Rx(List.generate(2,(index) =>Layout15ItemModel()));

Rx<List<Layout17ItemModel>> layout17ItemList = Rx(List.generate(5,(index) =>Layout17ItemModel()));

Rx<List<ShapeItemModel>> shapeItemList = Rx([ShapeItemModel(shape:ImageConstant.imgShape52.obs),ShapeItemModel(shape:ImageConstant.imgShape53.obs),ShapeItemModel(shape:ImageConstant.imgShape21.obs),ShapeItemModel(shape:ImageConstant.imgShape21.obs)]);

Rx<List<Layout19ItemModel>> layout19ItemList = Rx(List.generate(2,(index) =>Layout19ItemModel()));

Rx<List<Layout21ItemModel>> layout21ItemList = Rx([Layout21ItemModel(bedroom: "Bedroom".obs,text: "2".obs),Layout21ItemModel(bedroom: "Bathroom".obs,text: "2".obs),Layout21ItemModel(bedroom: "Balcony".obs,text: "1".obs)]);

Rx<List<Layout22ItemModel>> layout22ItemList = Rx(List.generate(4,(index) =>Layout22ItemModel()));

Rx<List<SeventyItemModel>> seventyItemList = Rx(List.generate(7,(index) =>SeventyItemModel()));

 }
