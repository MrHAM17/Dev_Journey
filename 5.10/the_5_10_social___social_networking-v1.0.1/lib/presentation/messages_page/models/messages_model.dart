import '../../../core/app_export.dart';
import 'stories2_item_model.dart';
import 'messageslist_item_model.dart';

class MessagesModel {
  List<Stories2ItemModel> stories2ItemList = [
    Stories2ItemModel(roy: ImageConstant.imgEllipse15, roy1: "Roy"),
    Stories2ItemModel(roy: ImageConstant.imgEllipse22, roy1: "Jordan"),
    Stories2ItemModel(roy: ImageConstant.imgEllipse24, roy1: "Angeline"),
    Stories2ItemModel(roy: ImageConstant.imgEllipse26, roy1: "Chrystin"),
    Stories2ItemModel(roy: ImageConstant.imgEllipse28, roy1: "Vrindha"),
    Stories2ItemModel(roy: ImageConstant.imgEllipse24, roy1: "Vrindha")
  ];

  List<MessageslistItemModel> messageslistItemList = [
    MessageslistItemModel(
        richardAlves: "Richard Alves",
        heyBroWhereAre: "Hey bro, where are you?",
        time: "10:00 AM"),
    MessageslistItemModel(
        richardAlves: "Richard Alves",
        heyBroWhereAre: "Hey bro, where are you?",
        time: "10:00 AM"),
    MessageslistItemModel(
        richardAlves: "Richard Alves",
        heyBroWhereAre: "Hey bro, where are you?",
        time: "10:00 AM"),
    MessageslistItemModel(
        richardAlves: "Richard Alves",
        heyBroWhereAre: "Hey bro, where are you?",
        time: "10:00 AM"),
    MessageslistItemModel(
        richardAlves: "Richard Alves",
        heyBroWhereAre: "Hey bro, where are you?",
        time: "10:00 AM")
  ];
}
