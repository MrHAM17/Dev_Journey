import '../../../core/app_export.dart';/// This class is used in the [theresavarnes_item_widget] screen.
class TheresavarnesItemModel {TheresavarnesItemModel({this.theresaVarnes, this.name, this.message, this.autoLayoutHorizontal, this.twoThousand, this.id, }) { theresaVarnes = theresaVarnes  ?? Rx(ImageConstant.imgEllipse4);name = name  ?? Rx("Theresa Varnes");message = message  ?? Rx("Hi, morning too Andrew!");autoLayoutHorizontal = autoLayoutHorizontal  ?? Rx("1");twoThousand = twoThousand  ?? Rx("10.00");id = id  ?? Rx(""); }

Rx<String>? theresaVarnes;

Rx<String>? name;

Rx<String>? message;

Rx<String>? autoLayoutHorizontal;

Rx<String>? twoThousand;

Rx<String>? id;

 }
