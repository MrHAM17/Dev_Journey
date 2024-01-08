import 'package:the_4_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_4_21_vertex___real_estate_app/presentation/home_listing_satelite_screen/models/home_listing_satelite_model.dart';/// A controller class for the HomeListingSateliteScreen.
///
/// This class manages the state of the HomeListingSateliteScreen, including the
/// current homeListingSateliteModelObj
class HomeListingSateliteController extends GetxController {Rx<HomeListingSateliteModel> homeListingSateliteModelObj = HomeListingSateliteModel().obs;

@override void onReady() { Get.toNamed(AppRoutes.homeListingDrawScreen, ); } 
 }
