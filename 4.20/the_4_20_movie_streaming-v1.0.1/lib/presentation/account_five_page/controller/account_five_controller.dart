import 'package:the_4_20_movie_streaming/core/app_export.dart';
import 'package:the_4_20_movie_streaming/presentation/account_five_page/models/account_five_model.dart';

/// A controller class for the AccountFivePage.
///
/// This class manages the state of the AccountFivePage, including the
/// current accountFiveModelObj
class AccountFiveController extends GetxController {
  AccountFiveController(this.accountFiveModelObj);

  Rx<AccountFiveModel> accountFiveModelObj;
}
