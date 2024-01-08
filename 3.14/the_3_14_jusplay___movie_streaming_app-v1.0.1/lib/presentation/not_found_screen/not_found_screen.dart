import 'bloc/not_found_bloc.dart';
import 'models/not_found_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/downloaded_page/downloaded_page.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/home_recently_watched_page/home_recently_watched_page.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/profile_page/profile_page.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/saved_page/saved_page.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/search_page/search_page.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_title_searchview.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/custom_bottom_bar.dart';

class NotFoundScreen extends StatelessWidget {
  NotFoundScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<NotFoundBloc>(
      create: (context) => NotFoundBloc(NotFoundState(
        notFoundModelObj: NotFoundModel(),
      ))
        ..add(NotFoundInitialEvent()),
      child: NotFoundScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMaskGroup,
                height: 184.adaptSize,
                width: 184.adaptSize,
              ),
              SizedBox(height: 42.v),
              Text(
                "lbl_opsss".tr,
                style: CustomTextStyles.titleMediumBold,
              ),
              SizedBox(height: 13.v),
              Text(
                "msg_what_you_are_looking".tr,
                style: CustomTextStyles.bodySmallPrimaryContainer,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 50.v,
      centerTitle: true,
      title: BlocSelector<NotFoundBloc, NotFoundState, TextEditingController?>(
        selector: (state) => state.searchController,
        builder: (context, searchController) {
          return AppbarTitleSearchview(
            hintText: "msg_search_by_title".tr,
            controller: searchController,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
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
