import '../../../core/app_export.dart';
import 'framethirtysix_item_model.dart';
import 'stories_item_model.dart';

class HomeModel {
  List<FramethirtysixItemModel> framethirtysixItemList = [
    FramethirtysixItemModel(loremIpsumIsA: "Lorem Ipsum Dolor"),
    FramethirtysixItemModel(loremIpsumIsA: "Lorem Ipsum Dolor"),
    FramethirtysixItemModel(loremIpsumIsA: "Lorem Ipsum Dolor"),
    FramethirtysixItemModel(loremIpsumIsA: "Lorem Ipsum Dolor")
  ];

  List<StoriesItemModel> storiesItemList = [
    StoriesItemModel(
        home: "LOGO",
        easyToUse: "Lorem Ipsum dolor set amet",
        duration: "16 days ago",
        time: "3 min read"),
    StoriesItemModel(
        home: "LOGO",
        easyToUse: "Lorem Ipsum dolor set amet",
        duration: "16 days ago",
        time: "3 min read"),
    StoriesItemModel(
        home: "LOGO",
        easyToUse: "Lorem Ipsum dolor set amet",
        duration: "16 days ago",
        time: "3 min read")
  ];
}
