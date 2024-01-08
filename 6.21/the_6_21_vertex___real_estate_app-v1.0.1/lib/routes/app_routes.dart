import 'package:flutter/material.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/splash_screen/splash_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/home_screen/home_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/home_alarm_container_screen/home_alarm_container_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/notification_screen/notification_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/notification_empty_states_screen/notification_empty_states_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/message_chat_screen/message_chat_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/my_home_empty_screen/my_home_empty_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/add_new_property_address_screen/add_new_property_address_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/add_new_property_meet_with_a_agent_screen/add_new_property_meet_with_a_agent_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/add_new_property_time_to_sell_screen/add_new_property_time_to_sell_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/add_new_property_reason_selling_home_screen/add_new_property_reason_selling_home_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/add_new_property_decsription_screen/add_new_property_decsription_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/add_new_property_home_facts_screen/add_new_property_home_facts_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/add_new_property_contact_screen/add_new_property_contact_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/add_new_property_select_amenities_screen/add_new_property_select_amenities_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/add_new_property_details_screen/add_new_property_details_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/home_listing_screen/home_listing_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/home_listing_satelite_screen/home_listing_satelite_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/home_listing_draw_screen/home_listing_draw_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/filter_tab_container_screen/filter_tab_container_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/product_details_screen/product_details_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/pick_date_screen/pick_date_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/verify_phone_number_screen/verify_phone_number_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/select_virtual_app_screen/select_virtual_app_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/select_app_alarm_screen/select_app_alarm_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/confirm_request_screen/confirm_request_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/settings_screen/settings_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/faqs_get_help_screen/faqs_get_help_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/past_tours_screen/past_tours_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/recently_views_screen/recently_views_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/favorite_screen/favorite_screen.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String homeScreen = '/home_screen';

  static const String homeAlarmPage = '/home_alarm_page';

  static const String homeAlarmContainerScreen = '/home_alarm_container_screen';

  static const String notificationScreen = '/notification_screen';

  static const String notificationEmptyStatesScreen =
      '/notification_empty_states_screen';

  static const String messagePage = '/message_page';

  static const String messageChatScreen = '/message_chat_screen';

  static const String myHomeEmptyScreen = '/my_home_empty_screen';

  static const String myHomePage = '/my_home_page';

  static const String addNewPropertyAddressScreen =
      '/add_new_property_address_screen';

  static const String addNewPropertyMeetWithAAgentScreen =
      '/add_new_property_meet_with_a_agent_screen';

  static const String addNewPropertyTimeToSellScreen =
      '/add_new_property_time_to_sell_screen';

  static const String addNewPropertyReasonSellingHomeScreen =
      '/add_new_property_reason_selling_home_screen';

  static const String addNewPropertyDecsriptionScreen =
      '/add_new_property_decsription_screen';

  static const String addNewPropertyHomeFactsScreen =
      '/add_new_property_home_facts_screen';

  static const String addNewPropertyContactScreen =
      '/add_new_property_contact_screen';

  static const String addNewPropertySelectAmenitiesScreen =
      '/add_new_property_select_amenities_screen';

  static const String addNewPropertyDetailsScreen =
      '/add_new_property_details_screen';

  static const String homeListingScreen = '/home_listing_screen';

  static const String homeListingSateliteScreen =
      '/home_listing_satelite_screen';

  static const String homeListingDrawScreen = '/home_listing_draw_screen';

  static const String filterPage = '/filter_page';

  static const String filterTabContainerScreen = '/filter_tab_container_screen';

  static const String homeSearchPage = '/home_search_page';

  static const String productDetailsScreen = '/product_details_screen';

  static const String pickDateScreen = '/pick_date_screen';

  static const String verifyPhoneNumberScreen = '/verify_phone_number_screen';

  static const String selectVirtualAppScreen = '/select_virtual_app_screen';

  static const String selectAppAlarmScreen = '/select_app_alarm_screen';

  static const String confirmRequestScreen = '/confirm_request_screen';

  static const String profilePage = '/profile_page';

  static const String settingsScreen = '/settings_screen';

  static const String faqsGetHelpScreen = '/faqs_get_help_screen';

  static const String pastToursScreen = '/past_tours_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String recentlyViewsScreen = '/recently_views_screen';

  static const String favoriteScreen = '/favorite_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    onboardingScreen: (context) => OnboardingScreen(),
    signInScreen: (context) => SignInScreen(),
    signUpScreen: (context) => SignUpScreen(),
    homeScreen: (context) => HomeScreen(),
    homeAlarmContainerScreen: (context) => HomeAlarmContainerScreen(),
    notificationScreen: (context) => NotificationScreen(),
    notificationEmptyStatesScreen: (context) => NotificationEmptyStatesScreen(),
    messageChatScreen: (context) => MessageChatScreen(),
    myHomeEmptyScreen: (context) => MyHomeEmptyScreen(),
    addNewPropertyAddressScreen: (context) => AddNewPropertyAddressScreen(),
    addNewPropertyMeetWithAAgentScreen: (context) =>
        AddNewPropertyMeetWithAAgentScreen(),
    addNewPropertyTimeToSellScreen: (context) =>
        AddNewPropertyTimeToSellScreen(),
    addNewPropertyReasonSellingHomeScreen: (context) =>
        AddNewPropertyReasonSellingHomeScreen(),
    addNewPropertyDecsriptionScreen: (context) =>
        AddNewPropertyDecsriptionScreen(),
    addNewPropertyHomeFactsScreen: (context) => AddNewPropertyHomeFactsScreen(),
    addNewPropertyContactScreen: (context) => AddNewPropertyContactScreen(),
    addNewPropertySelectAmenitiesScreen: (context) =>
        AddNewPropertySelectAmenitiesScreen(),
    addNewPropertyDetailsScreen: (context) => AddNewPropertyDetailsScreen(),
    homeListingScreen: (context) => HomeListingScreen(),
    homeListingSateliteScreen: (context) => HomeListingSateliteScreen(),
    homeListingDrawScreen: (context) => HomeListingDrawScreen(),
    filterTabContainerScreen: (context) => FilterTabContainerScreen(),
    productDetailsScreen: (context) => ProductDetailsScreen(),
    pickDateScreen: (context) => PickDateScreen(),
    verifyPhoneNumberScreen: (context) => VerifyPhoneNumberScreen(),
    selectVirtualAppScreen: (context) => SelectVirtualAppScreen(),
    selectAppAlarmScreen: (context) => SelectAppAlarmScreen(),
    confirmRequestScreen: (context) => ConfirmRequestScreen(),
    settingsScreen: (context) => SettingsScreen(),
    faqsGetHelpScreen: (context) => FaqsGetHelpScreen(),
    pastToursScreen: (context) => PastToursScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    recentlyViewsScreen: (context) => RecentlyViewsScreen(),
    favoriteScreen: (context) => FavoriteScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => SplashScreen(),
  };
}
