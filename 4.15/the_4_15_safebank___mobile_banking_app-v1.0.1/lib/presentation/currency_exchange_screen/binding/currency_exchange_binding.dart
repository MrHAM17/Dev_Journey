import '../controller/currency_exchange_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CurrencyExchangeScreen.
///
/// This class ensures that the CurrencyExchangeController is created when the
/// CurrencyExchangeScreen is first loaded.
class CurrencyExchangeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CurrencyExchangeController());
  }
}
