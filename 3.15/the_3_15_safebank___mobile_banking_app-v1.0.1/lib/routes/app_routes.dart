import 'package:flutter/material.dart';
import 'package:the_3_15_safebank___mobile_banking_app/presentation/splash_screen/splash_screen.dart';
import 'package:the_3_15_safebank___mobile_banking_app/presentation/login_page_tab_container_screen/login_page_tab_container_screen.dart';
import 'package:the_3_15_safebank___mobile_banking_app/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:the_3_15_safebank___mobile_banking_app/presentation/verify_email_screen/verify_email_screen.dart';
import 'package:the_3_15_safebank___mobile_banking_app/presentation/country_or_region_screen/country_or_region_screen.dart';
import 'package:the_3_15_safebank___mobile_banking_app/presentation/mine_page_container_screen/mine_page_container_screen.dart';
import 'package:the_3_15_safebank___mobile_banking_app/presentation/transfer_tab_container_screen/transfer_tab_container_screen.dart';
import 'package:the_3_15_safebank___mobile_banking_app/presentation/send_money_screen/send_money_screen.dart';
import 'package:the_3_15_safebank___mobile_banking_app/presentation/currency_exchange_screen/currency_exchange_screen.dart';
import 'package:the_3_15_safebank___mobile_banking_app/presentation/transfer_amount_screen/transfer_amount_screen.dart';
import 'package:the_3_15_safebank___mobile_banking_app/presentation/confirmation_screen/confirmation_screen.dart';
import 'package:the_3_15_safebank___mobile_banking_app/presentation/transfer_request_screen/transfer_request_screen.dart';
import 'package:the_3_15_safebank___mobile_banking_app/presentation/history_screen/history_screen.dart';
import 'package:the_3_15_safebank___mobile_banking_app/presentation/atm_location_screen/atm_location_screen.dart';
import 'package:the_3_15_safebank___mobile_banking_app/presentation/settings_screen/settings_screen.dart';
import 'package:the_3_15_safebank___mobile_banking_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginPage = '/login_page';

  static const String loginPageTabContainerScreen =
      '/login_page_tab_container_screen';

  static const String signUpPage = '/sign_up_page';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String verifyEmailScreen = '/verify_email_screen';

  static const String countryOrRegionScreen = '/country_or_region_screen';

  static const String minePage = '/mine_page';

  static const String minePageContainerScreen = '/mine_page_container_screen';

  static const String transferPage = '/transfer_page';

  static const String transferTabContainerScreen =
      '/transfer_tab_container_screen';

  static const String sendMoneyScreen = '/send_money_screen';

  static const String statisticsPage = '/statistics_page';

  static const String statisticsTabContainerPage =
      '/statistics_tab_container_page';

  static const String currencyExchangeScreen = '/currency_exchange_screen';

  static const String transferAmountScreen = '/transfer_amount_screen';

  static const String confirmationScreen = '/confirmation_screen';

  static const String transferRequestScreen = '/transfer_request_screen';

  static const String historyScreen = '/history_screen';

  static const String nationalBankPage = '/national_bank_page';

  static const String atmLocationScreen = '/atm_location_screen';

  static const String profilePage = '/profile_page';

  static const String settingsScreen = '/settings_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        loginPageTabContainerScreen: LoginPageTabContainerScreen.builder,
        forgotPasswordScreen: ForgotPasswordScreen.builder,
        verifyEmailScreen: VerifyEmailScreen.builder,
        countryOrRegionScreen: CountryOrRegionScreen.builder,
        minePageContainerScreen: MinePageContainerScreen.builder,
        transferTabContainerScreen: TransferTabContainerScreen.builder,
        sendMoneyScreen: SendMoneyScreen.builder,
        currencyExchangeScreen: CurrencyExchangeScreen.builder,
        transferAmountScreen: TransferAmountScreen.builder,
        confirmationScreen: ConfirmationScreen.builder,
        transferRequestScreen: TransferRequestScreen.builder,
        historyScreen: HistoryScreen.builder,
        atmLocationScreen: AtmLocationScreen.builder,
        settingsScreen: SettingsScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
