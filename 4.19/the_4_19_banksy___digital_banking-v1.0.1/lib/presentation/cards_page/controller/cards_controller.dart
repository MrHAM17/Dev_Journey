import 'package:the_4_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_4_19_banksy___digital_banking/presentation/cards_page/models/cards_model.dart';

/// A controller class for the CardsPage.
///
/// This class manages the state of the CardsPage, including the
/// current cardsModelObj
class CardsController extends GetxController {
  CardsController(this.cardsModelObj);

  Rx<CardsModel> cardsModelObj;
}
