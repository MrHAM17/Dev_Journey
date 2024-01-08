import 'package:flutter/material.dart';
import 'package:the_6_20_movie_streaming/presentation/splash_screen/splash_screen.dart';
import 'package:the_6_20_movie_streaming/presentation/login_screen/login_screen.dart';
import 'package:the_6_20_movie_streaming/presentation/dashboard_container_screen/dashboard_container_screen.dart';
import 'package:the_6_20_movie_streaming/presentation/see_more_five_screen/see_more_five_screen.dart';
import 'package:the_6_20_movie_streaming/presentation/see_more_six_screen/see_more_six_screen.dart';
import 'package:the_6_20_movie_streaming/presentation/see_more_seven_screen/see_more_seven_screen.dart';
import 'package:the_6_20_movie_streaming/presentation/detail_page_seven_screen/detail_page_seven_screen.dart';
import 'package:the_6_20_movie_streaming/presentation/detail_page_nine_screen/detail_page_nine_screen.dart';
import 'package:the_6_20_movie_streaming/presentation/detail_page_ten_screen/detail_page_ten_screen.dart';
import 'package:the_6_20_movie_streaming/presentation/detail_page_eleven_screen/detail_page_eleven_screen.dart';
import 'package:the_6_20_movie_streaming/presentation/detail_page_twelve_screen/detail_page_twelve_screen.dart';
import 'package:the_6_20_movie_streaming/presentation/detail_page_eight_screen/detail_page_eight_screen.dart';
import 'package:the_6_20_movie_streaming/presentation/explore_six_screen/explore_six_screen.dart';
import 'package:the_6_20_movie_streaming/presentation/explore_seven_screen/explore_seven_screen.dart';
import 'package:the_6_20_movie_streaming/presentation/explore_ten_screen/explore_ten_screen.dart';
import 'package:the_6_20_movie_streaming/presentation/explore_nine_screen/explore_nine_screen.dart';
import 'package:the_6_20_movie_streaming/presentation/channel_four_screen/channel_four_screen.dart';
import 'package:the_6_20_movie_streaming/presentation/channel_five_screen/channel_five_screen.dart';
import 'package:the_6_20_movie_streaming/presentation/search_seven_screen/search_seven_screen.dart';
import 'package:the_6_20_movie_streaming/presentation/search_ten_screen/search_ten_screen.dart';
import 'package:the_6_20_movie_streaming/presentation/search_six_screen/search_six_screen.dart';
import 'package:the_6_20_movie_streaming/presentation/search_eight_screen/search_eight_screen.dart';
import 'package:the_6_20_movie_streaming/presentation/search_nine_screen/search_nine_screen.dart';
import 'package:the_6_20_movie_streaming/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String dashboardPage = '/dashboard_page';

  static const String dashboardContainerScreen = '/dashboard_container_screen';

  static const String seeMoreFiveScreen = '/see_more_five_screen';

  static const String seeMoreSixScreen = '/see_more_six_screen';

  static const String seeMoreSevenScreen = '/see_more_seven_screen';

  static const String detailPageSevenScreen = '/detail_page_seven_screen';

  static const String detailPageNineScreen = '/detail_page_nine_screen';

  static const String detailPageTenScreen = '/detail_page_ten_screen';

  static const String detailPageElevenScreen = '/detail_page_eleven_screen';

  static const String detailPageTwelveScreen = '/detail_page_twelve_screen';

  static const String detailPageEightScreen = '/detail_page_eight_screen';

  static const String exploreSixScreen = '/explore_six_screen';

  static const String exploreSevenScreen = '/explore_seven_screen';

  static const String exploreTenScreen = '/explore_ten_screen';

  static const String exploreEightPage = '/explore_eight_page';

  static const String exploreNineScreen = '/explore_nine_screen';

  static const String channelFourScreen = '/channel_four_screen';

  static const String channelFiveScreen = '/channel_five_screen';

  static const String channelSixPage = '/channel_six_page';

  static const String accountFivePage = '/account_five_page';

  static const String searchSevenScreen = '/search_seven_screen';

  static const String searchTenScreen = '/search_ten_screen';

  static const String searchSixScreen = '/search_six_screen';

  static const String searchEightScreen = '/search_eight_screen';

  static const String searchNineScreen = '/search_nine_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    loginScreen: (context) => LoginScreen(),
    dashboardContainerScreen: (context) => DashboardContainerScreen(),
    seeMoreFiveScreen: (context) => SeeMoreFiveScreen(),
    seeMoreSixScreen: (context) => SeeMoreSixScreen(),
    seeMoreSevenScreen: (context) => SeeMoreSevenScreen(),
    detailPageSevenScreen: (context) => DetailPageSevenScreen(),
    detailPageNineScreen: (context) => DetailPageNineScreen(),
    detailPageTenScreen: (context) => DetailPageTenScreen(),
    detailPageElevenScreen: (context) => DetailPageElevenScreen(),
    detailPageTwelveScreen: (context) => DetailPageTwelveScreen(),
    detailPageEightScreen: (context) => DetailPageEightScreen(),
    exploreSixScreen: (context) => ExploreSixScreen(),
    exploreSevenScreen: (context) => ExploreSevenScreen(),
    exploreTenScreen: (context) => ExploreTenScreen(),
    exploreNineScreen: (context) => ExploreNineScreen(),
    channelFourScreen: (context) => ChannelFourScreen(),
    channelFiveScreen: (context) => ChannelFiveScreen(),
    searchSevenScreen: (context) => SearchSevenScreen(),
    searchTenScreen: (context) => SearchTenScreen(),
    searchSixScreen: (context) => SearchSixScreen(),
    searchEightScreen: (context) => SearchEightScreen(),
    searchNineScreen: (context) => SearchNineScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => SplashScreen(),
  };
}
