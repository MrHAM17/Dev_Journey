import '../../../core/app_export.dart';/// This class is used in the [questionanswer_item_widget] screen.
class QuestionanswerItemModel {QuestionanswerItemModel({this.bennySpanbauer, this.bennySpanbauer1, this.whatIsYourFavorite, this.image, this.sevenHundredThirtySix, this.id, }) { bennySpanbauer = bennySpanbauer  ?? Rx(ImageConstant.imgEllipse15);bennySpanbauer1 = bennySpanbauer1  ?? Rx("Benny Spanbauer");whatIsYourFavorite = whatIsYourFavorite  ?? Rx("What is your favorite fruit?");image = image  ?? Rx(ImageConstant.imgIconlyBoldHeart);sevenHundredThirtySix = sevenHundredThirtySix  ?? Rx("736");id = id  ?? Rx(""); }

Rx<String>? bennySpanbauer;

Rx<String>? bennySpanbauer1;

Rx<String>? whatIsYourFavorite;

Rx<String>? image;

Rx<String>? sevenHundredThirtySix;

Rx<String>? id;

 }
