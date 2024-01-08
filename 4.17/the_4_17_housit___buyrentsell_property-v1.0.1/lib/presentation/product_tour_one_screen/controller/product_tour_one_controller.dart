import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_4_17_housit___buyrentsell_property/presentation/product_tour_one_screen/models/product_tour_one_model.dart';/// A controller class for the ProductTourOneScreen.
///
/// This class manages the state of the ProductTourOneScreen, including the
/// current productTourOneModelObj
class ProductTourOneController extends GetxController {Rx<ProductTourOneModel> productTourOneModelObj = ProductTourOneModel().obs;

@override void onReady() { Get.toNamed(AppRoutes.loginScreen, ); } 
 }
