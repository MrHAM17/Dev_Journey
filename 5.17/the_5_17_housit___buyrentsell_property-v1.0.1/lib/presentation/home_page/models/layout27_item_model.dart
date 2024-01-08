import '../../../core/app_export.dart';/// This class is used in the [layout27_item_widget] screen.
class Layout27ItemModel {Layout27ItemModel({this.image, this.favorite, this.skyDandelionsApartment, this.text, this.jakartaIndonesia, this.price, this.month, this.id, }) { image = image  ?? ImageConstant.imgShape61;favorite = favorite  ?? ImageConstant.imgFavoriteRedA200;skyDandelionsApartment = skyDandelionsApartment  ?? "Sky Dandelions\nApartment";text = text  ?? "4.9";jakartaIndonesia = jakartaIndonesia  ?? "Jakarta, Indonesia";price = price  ?? " 290";month = month  ?? "/month";id = id  ?? ""; }

String? image;

String? favorite;

String? skyDandelionsApartment;

String? text;

String? jakartaIndonesia;

String? price;

String? month;

String? id;

 }
