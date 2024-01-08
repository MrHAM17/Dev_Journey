import '../../../core/app_export.dart';/// This class is used in the [list_item_widget] screen.
class ListItemModel {ListItemModel({this.primaryApartment, this.three, this.two, this.price, this.id, }) { primaryApartment = primaryApartment  ?? "Primary Apartment";three = three  ?? "3";two = two  ?? "2";price = price  ?? "1,600 - 1,800 ";id = id  ?? ""; }

String? primaryApartment;

String? three;

String? two;

String? price;

String? id;

 }
