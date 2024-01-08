import '../../../core/app_export.dart';import 'preferable_item_model.dart';/// This class defines the variables used in the [preferable_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PreferableModel {Rx<List<PreferableItemModel>> preferableItemList = Rx([PreferableItemModel(house:ImageConstant.imgShape43.obs,house1: "House".obs),PreferableItemModel(house:ImageConstant.imgShape44.obs,house1: "Apartment".obs),PreferableItemModel(house:ImageConstant.imgShape45.obs,house1: "Villa".obs),PreferableItemModel(house:ImageConstant.imgShape46.obs,house1: "Cottage".obs),PreferableItemModel(house:ImageConstant.imgShape47.obs,house1: "House".obs),PreferableItemModel(house:ImageConstant.imgShape48.obs,house1: "House".obs)]);

 }
