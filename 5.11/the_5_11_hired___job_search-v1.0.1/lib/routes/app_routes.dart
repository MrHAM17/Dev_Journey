import 'package:flutter/material.dart';
import 'package:the_5_11_hired___job_search/presentation/splash_screen/splash_screen.dart';
import 'package:the_5_11_hired___job_search/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:the_5_11_hired___job_search/presentation/sign_up_create_acount_screen/sign_up_create_acount_screen.dart';
import 'package:the_5_11_hired___job_search/presentation/sign_up_complete_account_screen/sign_up_complete_account_screen.dart';
import 'package:the_5_11_hired___job_search/presentation/job_type_screen/job_type_screen.dart';
import 'package:the_5_11_hired___job_search/presentation/speciallization_screen/speciallization_screen.dart';
import 'package:the_5_11_hired___job_search/presentation/select_a_country_screen/select_a_country_screen.dart';
import 'package:the_5_11_hired___job_search/presentation/login_screen/login_screen.dart';
import 'package:the_5_11_hired___job_search/presentation/enter_otp_tab_container_screen/enter_otp_tab_container_screen.dart';
import 'package:the_5_11_hired___job_search/presentation/home_container_screen/home_container_screen.dart';
import 'package:the_5_11_hired___job_search/presentation/search_screen/search_screen.dart';
import 'package:the_5_11_hired___job_search/presentation/job_details_tab_container_screen/job_details_tab_container_screen.dart';
import 'package:the_5_11_hired___job_search/presentation/message_action_screen/message_action_screen.dart';
import 'package:the_5_11_hired___job_search/presentation/chat_screen/chat_screen.dart';
import 'package:the_5_11_hired___job_search/presentation/apply_job_screen/apply_job_screen.dart';
import 'package:the_5_11_hired___job_search/presentation/notifications_my_proposals_tab_container_screen/notifications_my_proposals_tab_container_screen.dart';
import 'package:the_5_11_hired___job_search/presentation/settings_screen/settings_screen.dart';
import 'package:the_5_11_hired___job_search/presentation/personal_info_screen/personal_info_screen.dart';
import 'package:the_5_11_hired___job_search/presentation/experience_setting_screen/experience_setting_screen.dart';
import 'package:the_5_11_hired___job_search/presentation/new_position_screen/new_position_screen.dart';
import 'package:the_5_11_hired___job_search/presentation/add_new_education_screen/add_new_education_screen.dart';
import 'package:the_5_11_hired___job_search/presentation/privacy_screen/privacy_screen.dart';
import 'package:the_5_11_hired___job_search/presentation/language_screen/language_screen.dart';
import 'package:the_5_11_hired___job_search/presentation/notifications_screen/notifications_screen.dart';
import 'package:the_5_11_hired___job_search/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String signUpCreateAcountScreen =
      '/sign_up_create_acount_screen';

  static const String signUpCompleteAccountScreen =
      '/sign_up_complete_account_screen';

  static const String jobTypeScreen = '/job_type_screen';

  static const String speciallizationScreen = '/speciallization_screen';

  static const String selectACountryScreen = '/select_a_country_screen';

  static const String loginScreen = '/login_screen';

  static const String enterOtpPage = '/enter_otp_page';

  static const String enterOtpTabContainerScreen =
      '/enter_otp_tab_container_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String searchScreen = '/search_screen';

  static const String jobDetailsPage = '/job_details_page';

  static const String jobDetailsTabContainerScreen =
      '/job_details_tab_container_screen';

  static const String messagePage = '/message_page';

  static const String messageActionScreen = '/message_action_screen';

  static const String chatScreen = '/chat_screen';

  static const String savedPage = '/saved_page';

  static const String savedDetailJobPage = '/saved_detail_job_page';

  static const String applyJobScreen = '/apply_job_screen';

  static const String appliedJobPage = '/applied_job_page';

  static const String notificationsGeneralPage = '/notifications_general_page';

  static const String notificationsMyProposalsPage =
      '/notifications_my_proposals_page';

  static const String notificationsMyProposalsTabContainerScreen =
      '/notifications_my_proposals_tab_container_screen';

  static const String profilePage = '/profile_page';

  static const String settingsScreen = '/settings_screen';

  static const String personalInfoScreen = '/personal_info_screen';

  static const String experienceSettingScreen = '/experience_setting_screen';

  static const String newPositionScreen = '/new_position_screen';

  static const String addNewEducationScreen = '/add_new_education_screen';

  static const String privacyScreen = '/privacy_screen';

  static const String languageScreen = '/language_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        onboardingThreeScreen: OnboardingThreeScreen.builder,
        signUpCreateAcountScreen: SignUpCreateAcountScreen.builder,
        signUpCompleteAccountScreen: SignUpCompleteAccountScreen.builder,
        jobTypeScreen: JobTypeScreen.builder,
        speciallizationScreen: SpeciallizationScreen.builder,
        selectACountryScreen: SelectACountryScreen.builder,
        loginScreen: LoginScreen.builder,
        enterOtpTabContainerScreen: EnterOtpTabContainerScreen.builder,
        homeContainerScreen: HomeContainerScreen.builder,
        searchScreen: SearchScreen.builder,
        jobDetailsTabContainerScreen: JobDetailsTabContainerScreen.builder,
        messageActionScreen: MessageActionScreen.builder,
        chatScreen: ChatScreen.builder,
        applyJobScreen: ApplyJobScreen.builder,
        notificationsMyProposalsTabContainerScreen:
            NotificationsMyProposalsTabContainerScreen.builder,
        settingsScreen: SettingsScreen.builder,
        personalInfoScreen: PersonalInfoScreen.builder,
        experienceSettingScreen: ExperienceSettingScreen.builder,
        newPositionScreen: NewPositionScreen.builder,
        addNewEducationScreen: AddNewEducationScreen.builder,
        privacyScreen: PrivacyScreen.builder,
        languageScreen: LanguageScreen.builder,
        notificationsScreen: NotificationsScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
