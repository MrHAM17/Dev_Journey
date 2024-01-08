import 'bloc/home_recently_watched_container_bloc.dart';
import 'models/home_recently_watched_container_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/downloaded_page/downloaded_page.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/home_recently_watched_page/home_recently_watched_page.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/profile_page/profile_page.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/saved_page/saved_page.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/search_page/search_page.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomeRecentlyWatchedContainerScreen extends StatelessWidget {
  HomeRecentlyWatchedContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeRecentlyWatchedContainerBloc>(
        create: (context) => HomeRecentlyWatchedContainerBloc(
            HomeRecentlyWatchedContainerState(
                homeRecentlyWatchedContainerModelObj:
                    HomeRecentlyWatchedContainerModel()))
          ..add(HomeRecentlyWatchedContainerInitialEvent()),
        child: HomeRecentlyWatchedContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeRecentlyWatchedContainerBloc,
        HomeRecentlyWatchedContainerState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.homeRecentlyWatchedPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeRecentlyWatchedPage;
      case BottomBarEnum.Search:
        return AppRoutes.searchPage;
      case BottomBarEnum.Saved:
        return AppRoutes.savedPage;
      case BottomBarEnum.Downloads:
        return AppRoutes.downloadedPage;
      case BottomBarEnum.Me:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homeRecentlyWatchedPage:
        return HomeRecentlyWatchedPage();
      case AppRoutes.searchPage:
        return SearchPage();
      case AppRoutes.savedPage:
        return SavedPage();
      case AppRoutes.downloadedPage:
        return DownloadedPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
