import 'layout6_item_model.dart';import '../../../core/app_export.dart';import 'layout8_item_model.dart';import 'layout9_item_model.dart';import 'layout11_item_model.dart';/// This class defines the variables used in the [extra_information_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExtraInformationModel {Rx<List<Layout6ItemModel>> layout6ItemList = Rx(List.generate(2,(index) =>Layout6ItemModel()));

Rx<List<Layout8ItemModel>> layout8ItemList = Rx([Layout8ItemModel(bedroom: "Bedroom".obs,text: "3".obs),Layout8ItemModel(bedroom: "Bathroom".obs,text: "2".obs),Layout8ItemModel(bedroom: "Balcony".obs,text: "2".obs)]);

Rx<List<Layout9ItemModel>> layout9ItemList = Rx(List.generate(4,(index) =>Layout9ItemModel()));

Rx<List<Layout11ItemModel>> layout11ItemList = Rx(List.generate(7,(index) =>Layout11ItemModel()));

 }
