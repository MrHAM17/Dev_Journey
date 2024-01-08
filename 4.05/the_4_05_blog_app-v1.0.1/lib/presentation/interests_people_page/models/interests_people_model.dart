import '../../../core/app_export.dart';
import 'interestspeople_item_model.dart';

/// This class defines the variables used in the [interests_people_page],
/// and is typically used to hold data that is passed between different parts of the application.
class InterestsPeopleModel {
  Rx<List<InterestspeopleItemModel>> interestspeopleItemList = Rx([
    InterestspeopleItemModel(morePeopleToFollow: "MORE PEOPLE TO FOLLOW".obs)
  ]);
}
