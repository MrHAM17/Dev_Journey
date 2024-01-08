import '../../../core/app_export.dart';
import 'events_item_model.dart';

class EventsModel {
  List<EventsItemModel> eventsItemList = [
    EventsItemModel(
        fashionMeetup: ImageConstant.imgImage180x283,
        monday: "Monday",
        decemberCounter: "December, 2019",
        monday1: ImageConstant.imgIconOptionsGray500,
        title: "Fashion Meetup",
        time: "Starts at 9:00am in Los Angeles",
        avatarInitials: "+9"),
    EventsItemModel(
        fashionMeetup: ImageConstant.imgImage9,
        monday: "Monday",
        decemberCounter: "December, 2019",
        monday1: ImageConstant.imgOptionsGray500,
        title: "Fashion Meetup",
        time: "Starts at 9:00am in Los Angeles",
        avatarInitials: "+9")
  ];
}
