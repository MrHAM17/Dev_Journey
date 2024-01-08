import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/presentation/qr_code_screen/models/qr_code_model.dart';

/// A controller class for the QrCodeScreen.
///
/// This class manages the state of the QrCodeScreen, including the
/// current qrCodeModelObj
class QrCodeController extends GetxController {
  Rx<QrCodeModel> qrCodeModelObj = QrCodeModel().obs;
}
