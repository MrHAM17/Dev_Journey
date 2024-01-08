import '../../../core/app_export.dart';
import 'intereststopics_item_model.dart';

/// This class defines the variables used in the [interests_topics_page],
/// and is typically used to hold data that is passed between different parts of the application.
class InterestsTopicsModel {
  Rx<List<IntereststopicsItemModel>> intereststopicsItemList = Rx([
    IntereststopicsItemModel(easyToUse: "Art".obs),
    IntereststopicsItemModel(easyToUse: "Books".obs),
    IntereststopicsItemModel(easyToUse: "Comics".obs),
    IntereststopicsItemModel(easyToUse: "Fiction".obs),
    IntereststopicsItemModel(easyToUse: "Film".obs),
    IntereststopicsItemModel(easyToUse: "Gaming".obs),
    IntereststopicsItemModel(easyToUse: "Humor".obs),
    IntereststopicsItemModel(easyToUse: "Music".obs),
    IntereststopicsItemModel(easyToUse: "Nonfiction".obs),
    IntereststopicsItemModel(easyToUse: "Art".obs)
  ]);
}
