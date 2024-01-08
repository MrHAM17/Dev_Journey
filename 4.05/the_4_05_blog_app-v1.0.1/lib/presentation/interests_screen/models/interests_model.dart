import 'intrestrow1_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [interests_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InterestsModel {
  Rx<List<Intrestrow1ItemModel>> intrestrow1ItemList =
      Rx(List.generate(27, (index) => Intrestrow1ItemModel()));
}
