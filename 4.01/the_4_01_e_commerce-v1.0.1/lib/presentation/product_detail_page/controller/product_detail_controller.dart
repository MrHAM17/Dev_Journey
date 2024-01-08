import 'package:the_4_01_e_commerce/core/app_export.dart';import 'package:the_4_01_e_commerce/presentation/product_detail_page/models/product_detail_model.dart';/// A controller class for the ProductDetailPage.
///
/// This class manages the state of the ProductDetailPage, including the
/// current productDetailModelObj
class ProductDetailController extends GetxController {ProductDetailController(this.productDetailModelObj);

Rx<ProductDetailModel> productDetailModelObj;

@override void onReady() { Get.toNamed(AppRoutes.searchScreen, ); } 
 }
