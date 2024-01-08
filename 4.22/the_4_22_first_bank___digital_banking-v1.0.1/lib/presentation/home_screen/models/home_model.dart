import '../../../core/app_export.dart';
import 'cardcomponent_item_model.dart';
import 'randypress_item_model.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<CardcomponentItemModel>> cardcomponentItemList = Rx([
    CardcomponentItemModel(
        balance: "Balance".obs,
        balanceAmount: "5,756".obs,
        cardHolderName: "CARD HOLDER".obs,
        cardHolderText: "Eddy Cusuma".obs,
        validThruDate: "VALID THRU".obs,
        validThruText: "12/22".obs,
        cardNumberText: "3778 **** **** 1234".obs)
  ]);

  Rx<List<RandypressItemModel>> randypressItemList = Rx([
    RandypressItemModel(
        userImage: ImageConstant.imgEllipse18.obs,
        text1: "Livia Bator".obs,
        text2: "CEO".obs),
    RandypressItemModel(
        userImage: ImageConstant.imgEllipse1850x50.obs,
        text1: "Randy Press".obs,
        text2: "Director".obs),
    RandypressItemModel(
        userImage: ImageConstant.imgEllipse181.obs,
        text1: "Workman".obs,
        text2: "Designer".obs)
  ]);
}
