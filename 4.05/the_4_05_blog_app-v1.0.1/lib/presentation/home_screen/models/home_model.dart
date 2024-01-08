import '../../../core/app_export.dart';
import 'framethirtysix_item_model.dart';
import 'stories_item_model.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<FramethirtysixItemModel>> framethirtysixItemList = Rx([
    FramethirtysixItemModel(loremIpsumIsA: "Lorem Ipsum Dolor".obs),
    FramethirtysixItemModel(loremIpsumIsA: "Lorem Ipsum Dolor".obs),
    FramethirtysixItemModel(loremIpsumIsA: "Lorem Ipsum Dolor".obs),
    FramethirtysixItemModel(loremIpsumIsA: "Lorem Ipsum Dolor".obs)
  ]);

  Rx<List<StoriesItemModel>> storiesItemList = Rx([
    StoriesItemModel(
        home: "LOGO".obs,
        easyToUse: "Lorem Ipsum dolor set amet".obs,
        duration: "16 days ago".obs,
        time: "3 min read".obs),
    StoriesItemModel(
        home: "LOGO".obs,
        easyToUse: "Lorem Ipsum dolor set amet".obs,
        duration: "16 days ago".obs,
        time: "3 min read".obs),
    StoriesItemModel(
        home: "LOGO".obs,
        easyToUse: "Lorem Ipsum dolor set amet".obs,
        duration: "16 days ago".obs,
        time: "3 min read".obs)
  ]);
}
