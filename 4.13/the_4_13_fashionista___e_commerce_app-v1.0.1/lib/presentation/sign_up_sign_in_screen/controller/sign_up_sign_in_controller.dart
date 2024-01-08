import 'package:the_4_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_4_13_fashionista___e_commerce_app/presentation/sign_up_sign_in_screen/models/sign_up_sign_in_model.dart';

/// A controller class for the SignUpSignInScreen.
///
/// This class manages the state of the SignUpSignInScreen, including the
/// current signUpSignInModelObj
class SignUpSignInController extends GetxController {
  Rx<SignUpSignInModel> signUpSignInModelObj = SignUpSignInModel().obs;
}
