import '../../../core/app_export.dart';
import 'drugs2_item_model.dart';

/// This class defines the variables used in the [cart_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CartModel {
  Rx<List<Drugs2ItemModel>> drugs2ItemList = Rx([
    Drugs2ItemModel(
        oBHCombi: ImageConstant.imgDrugThumbnail72x72.obs,
        oBHCombi1: "OBH Combi".obs,
        measurement: "75ml".obs,
        counter: "1".obs,
        price: "9.99".obs),
    Drugs2ItemModel(
        oBHCombi: ImageConstant.imgDrugThumbnail4.obs,
        oBHCombi1: "Panadol".obs,
        measurement: "20pcs".obs,
        counter: "1".obs,
        price: "9.99".obs)
  ]);
}
