import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_4_17_housit___buyrentsell_property/presentation/product_tour_three_screen/models/product_tour_three_model.dart';/// A controller class for the ProductTourThreeScreen.
///
/// This class manages the state of the ProductTourThreeScreen, including the
/// current productTourThreeModelObj
class ProductTourThreeController extends GetxController {Rx<ProductTourThreeModel> productTourThreeModelObj = ProductTourThreeModel().obs;

@override void onReady() { Get.toNamed(AppRoutes.loginScreen, ); } 
 }
