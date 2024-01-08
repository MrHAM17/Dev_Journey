import '../../../core/app_export.dart';/// This class is used in the [theresavarnes_item_widget] screen.
class TheresavarnesItemModel {TheresavarnesItemModel({this.theresaVarnes, this.name, this.message, this.autoLayoutHorizontal, this.twoThousand, this.id, }) { theresaVarnes = theresaVarnes  ?? ImageConstant.imgEllipse4;name = name  ?? "Theresa Varnes";message = message  ?? "Hi, morning too Andrew!";autoLayoutHorizontal = autoLayoutHorizontal  ?? "1";twoThousand = twoThousand  ?? "10.00";id = id  ?? ""; }

String? theresaVarnes;

String? name;

String? message;

String? autoLayoutHorizontal;

String? twoThousand;

String? id;

 }
