import 'package:flutter/material.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/splash_screen/splash_screen.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/login_screen/login_screen.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/otp_verification_screen/otp_verification_screen.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/reset_password_success_screen/reset_password_success_screen.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/home_tab_container_screen/home_tab_container_screen.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/category_comedy_screen/category_comedy_screen.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/episode_tab_container_screen/episode_tab_container_screen.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/choose_plan_screen/choose_plan_screen.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/home_recently_watched_container_screen/home_recently_watched_container_screen.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/search_result_screen/search_result_screen.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/not_found_screen/not_found_screen.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/select_saved_screen/select_saved_screen.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/saved_empty_screen/saved_empty_screen.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/notification_screen/notification_screen.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/history_screen/history_screen.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/no_history_screen/no_history_screen.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/setting_screen/setting_screen.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/language_screen/language_screen.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/help_screen/help_screen.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String otpVerificationScreen = '/otp_verification_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String resetPasswordSuccessScreen =
      '/reset_password_success_screen';

  static const String homePage = '/home_page';

  static const String homeTabContainerScreen = '/home_tab_container_screen';

  static const String categoryComedyScreen = '/category_comedy_screen';

  static const String episodePage = '/episode_page';

  static const String episodeTabContainerScreen =
      '/episode_tab_container_screen';

  static const String similiarPage = '/similiar_page';

  static const String aboutPage = '/about_page';

  static const String choosePlanScreen = '/choose_plan_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String homeRecentlyWatchedPage = '/home_recently_watched_page';

  static const String homeRecentlyWatchedContainerScreen =
      '/home_recently_watched_container_screen';

  static const String searchPage = '/search_page';

  static const String searchResultScreen = '/search_result_screen';

  static const String notFoundScreen = '/not_found_screen';

  static const String downloadedPage = '/downloaded_page';

  static const String savedPage = '/saved_page';

  static const String selectSavedScreen = '/select_saved_screen';

  static const String savedEmptyScreen = '/saved_empty_screen';

  static const String profilePage = '/profile_page';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String notificationScreen = '/notification_screen';

  static const String historyScreen = '/history_screen';

  static const String noHistoryScreen = '/no_history_screen';

  static const String settingScreen = '/setting_screen';

  static const String languageScreen = '/language_screen';

  static const String helpScreen = '/help_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        loginScreen: LoginScreen.builder,
        signUpScreen: SignUpScreen.builder,
        forgotPasswordScreen: ForgotPasswordScreen.builder,
        otpVerificationScreen: OtpVerificationScreen.builder,
        resetPasswordScreen: ResetPasswordScreen.builder,
        resetPasswordSuccessScreen: ResetPasswordSuccessScreen.builder,
        homeTabContainerScreen: HomeTabContainerScreen.builder,
        categoryComedyScreen: CategoryComedyScreen.builder,
        episodeTabContainerScreen: EpisodeTabContainerScreen.builder,
        choosePlanScreen: ChoosePlanScreen.builder,
        paymentMethodScreen: PaymentMethodScreen.builder,
        homeRecentlyWatchedContainerScreen:
            HomeRecentlyWatchedContainerScreen.builder,
        searchResultScreen: SearchResultScreen.builder,
        notFoundScreen: NotFoundScreen.builder,
        selectSavedScreen: SelectSavedScreen.builder,
        savedEmptyScreen: SavedEmptyScreen.builder,
        editProfileScreen: EditProfileScreen.builder,
        notificationScreen: NotificationScreen.builder,
        historyScreen: HistoryScreen.builder,
        noHistoryScreen: NoHistoryScreen.builder,
        settingScreen: SettingScreen.builder,
        languageScreen: LanguageScreen.builder,
        helpScreen: HelpScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
