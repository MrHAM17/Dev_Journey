import 'layout2_item_model.dart';import 'layout4_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [form_detail_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FormDetailModel {Rx<List<Layout2ItemModel>> layout2ItemList = Rx(List.generate(2,(index) =>Layout2ItemModel()));

Rx<List<Layout4ItemModel>> layout4ItemList = Rx(List.generate(5,(index) =>Layout4ItemModel()));

 }
