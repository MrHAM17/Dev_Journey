import 'package:the_4_10_social___social_networking/core/app_export.dart';
import 'package:the_4_10_social___social_networking/presentation/account_view_screen/models/account_view_model.dart';

/// A controller class for the AccountViewScreen.
///
/// This class manages the state of the AccountViewScreen, including the
/// current accountViewModelObj
class AccountViewController extends GetxController {
  Rx<AccountViewModel> accountViewModelObj = AccountViewModel().obs;
}
