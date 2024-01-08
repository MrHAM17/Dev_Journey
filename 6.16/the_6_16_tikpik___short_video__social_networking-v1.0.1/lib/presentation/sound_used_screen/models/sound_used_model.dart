// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'soundused_item_model.dart';/// This class defines the variables used in the [sound_used_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SoundUsedModel extends Equatable {SoundUsedModel({this.soundusedItemList = const []}) {  }

List<SoundusedItemModel> soundusedItemList;

SoundUsedModel copyWith({List<SoundusedItemModel>? soundusedItemList}) { return SoundUsedModel(
soundusedItemList : soundusedItemList ?? this.soundusedItemList,
); } 
@override List<Object?> get props => [soundusedItemList];
 }
