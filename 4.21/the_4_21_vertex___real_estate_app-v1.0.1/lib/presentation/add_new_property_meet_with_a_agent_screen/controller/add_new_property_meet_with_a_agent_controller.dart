import 'package:the_4_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_4_21_vertex___real_estate_app/presentation/add_new_property_meet_with_a_agent_screen/models/add_new_property_meet_with_a_agent_model.dart';import 'package:table_calendar/table_calendar.dart';/// A controller class for the AddNewPropertyMeetWithAAgentScreen.
///
/// This class manages the state of the AddNewPropertyMeetWithAAgentScreen, including the
/// current addNewPropertyMeetWithAAgentModelObj
class AddNewPropertyMeetWithAAgentController extends GetxController {Rx<AddNewPropertyMeetWithAAgentModel> addNewPropertyMeetWithAAgentModelObj = AddNewPropertyMeetWithAAgentModel().obs;

DateTime? rangeStart;

DateTime? rangeEnd;

DateTime? selectedDay;

Rx<DateTime> focusedDay = DateTime.now().obs;

Rx<RangeSelectionMode> rangeSelectionMode = RangeSelectionMode.toggledOn.obs;

 }
