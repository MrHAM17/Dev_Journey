import 'package:the_4_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_4_13_fashionista___e_commerce_app/presentation/reviews_page/models/reviews_model.dart';

/// A controller class for the ReviewsPage.
///
/// This class manages the state of the ReviewsPage, including the
/// current reviewsModelObj
class ReviewsController extends GetxController {
  ReviewsController(this.reviewsModelObj);

  Rx<ReviewsModel> reviewsModelObj;
}
