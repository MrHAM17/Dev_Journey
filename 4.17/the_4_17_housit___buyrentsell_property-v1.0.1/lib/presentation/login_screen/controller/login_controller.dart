import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_4_17_housit___buyrentsell_property/presentation/login_screen/models/login_model.dart';/// A controller class for the LoginScreen.
///
/// This class manages the state of the LoginScreen, including the
/// current loginModelObj
class LoginController extends GetxController {Rx<LoginModel> loginModelObj = LoginModel().obs;

@override void onReady() { Get.toNamed(AppRoutes.registerFormEmptyScreen, ); } 
 }
