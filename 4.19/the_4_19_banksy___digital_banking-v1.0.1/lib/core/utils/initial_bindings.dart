import 'package:the_4_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_4_19_banksy___digital_banking/data/apiClient/api_client.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(ApiClient());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
