import 'bloc/stories_container_bloc.dart';
import 'models/stories_container_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_10_social___social_networking/core/app_export.dart';
import 'package:the_3_10_social___social_networking/presentation/messages_page/messages_page.dart';
import 'package:the_3_10_social___social_networking/presentation/notifications_page/notifications_page.dart';
import 'package:the_3_10_social___social_networking/presentation/profile_page/profile_page.dart';
import 'package:the_3_10_social___social_networking/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class StoriesContainerScreen extends StatelessWidget {
  StoriesContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<StoriesContainerBloc>(
        create: (context) => StoriesContainerBloc(StoriesContainerState(
            storiesContainerModelObj: StoriesContainerModel()))
          ..add(StoriesContainerInitialEvent()),
        child: StoriesContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoriesContainerBloc, StoriesContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: "/",
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
        return "/";
      case BottomBarEnum.Streams:
        return "/";
      case BottomBarEnum.Messages:
        return AppRoutes.messagesPage;
      case BottomBarEnum.Notifications:
        return AppRoutes.notificationsPage;
      case BottomBarEnum.Profile:
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
      case AppRoutes.messagesPage:
        return MessagesPage();
      case AppRoutes.notificationsPage:
        return NotificationsPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
