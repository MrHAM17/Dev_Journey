import 'package:the_4_05_blog_app/core/app_export.dart';
import 'package:the_4_05_blog_app/presentation/sign_in_screen/models/sign_in_model.dart';

/// A controller class for the SignInScreen.
///
/// This class manages the state of the SignInScreen, including the
/// current signInModelObj
class SignInController extends GetxController {
  Rx<SignInModel> signInModelObj = SignInModel().obs;
}
