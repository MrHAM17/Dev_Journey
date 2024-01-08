import '../../../core/app_export.dart';/// This class is used in the [layout13_item_widget] screen.
class Layout13ItemModel {Layout13ItemModel({this.image, this.skyDandelionsApartment, this.text, this.jakartaIndonesia, this.id, }) { image = image  ?? Rx(ImageConstant.imgShape104x126);skyDandelionsApartment = skyDandelionsApartment  ?? Rx("Sky Dandelions\nApartment");text = text  ?? Rx("4.2 ");jakartaIndonesia = jakartaIndonesia  ?? Rx("Jakarta, Indonesia");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? skyDandelionsApartment;

Rx<String>? text;

Rx<String>? jakartaIndonesia;

Rx<String>? id;

 }
