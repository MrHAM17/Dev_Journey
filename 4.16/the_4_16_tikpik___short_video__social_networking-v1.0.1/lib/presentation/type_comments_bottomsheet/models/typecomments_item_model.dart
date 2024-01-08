import '../../../core/app_export.dart';/// This class is used in the [typecomments_item_widget] screen.
class TypecommentsItemModel {TypecommentsItemModel({this.adipiscingElit, this.kristinWatson, this.image, this.text, this.duration, this.reply, this.id, }) { adipiscingElit = adipiscingElit  ?? Rx("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.");kristinWatson = kristinWatson  ?? Rx("Kristin Watson");image = image  ?? Rx(ImageConstant.imgIconlyBoldHeart);text = text  ?? Rx("938");duration = duration  ?? Rx("3 days ago");reply = reply  ?? Rx("Reply");id = id  ?? Rx(""); }

Rx<String>? adipiscingElit;

Rx<String>? kristinWatson;

Rx<String>? image;

Rx<String>? text;

Rx<String>? duration;

Rx<String>? reply;

Rx<String>? id;

 }
