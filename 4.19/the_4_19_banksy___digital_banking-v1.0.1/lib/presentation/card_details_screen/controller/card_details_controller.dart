import 'package:the_4_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_4_19_banksy___digital_banking/presentation/card_details_screen/models/card_details_model.dart';

/// A controller class for the CardDetailsScreen.
///
/// This class manages the state of the CardDetailsScreen, including the
/// current cardDetailsModelObj
class CardDetailsController extends GetxController {
  Rx<CardDetailsModel> cardDetailsModelObj = CardDetailsModel().obs;
}
