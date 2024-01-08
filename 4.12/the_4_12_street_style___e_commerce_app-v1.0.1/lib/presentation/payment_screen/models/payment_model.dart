import '../../../core/app_export.dart';
import 'card_item_model.dart';

/// This class defines the variables used in the [payment_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PaymentModel {
  Rx<List<CardItemModel>> cardItemList =
      Rx([CardItemModel(television: ImageConstant.imgTelevision.obs)]);
}
