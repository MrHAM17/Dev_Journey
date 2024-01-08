import '../../../core/app_export.dart';/// This class is used in the [follow_item_widget] screen.
class FollowItemModel {FollowItemModel({this.arianaGrande, this.arianaGrande1, this.price, this.id, }) { arianaGrande = arianaGrande  ?? Rx(ImageConstant.imgEllipse8);arianaGrande1 = arianaGrande1  ?? Rx("Ariana Grande");price = price  ?? Rx("arianagrande | 27.3M followers");id = id  ?? Rx(""); }

Rx<String>? arianaGrande;

Rx<String>? arianaGrande1;

Rx<String>? price;

Rx<String>? id;

 }
