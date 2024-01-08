import 'package:the_4_18_tune_cast___music_streaming__podcast_app/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [new_playlist_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class NewPlaylistModel {Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

 }
