import '../home_tab_container_screen/widgets/widget_item_widget.dart';
import 'models/widget_item_model.dart';
import 'notifier/home_tab_container_notifier.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/downloaded_page/downloaded_page.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/home_page/home_page.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/home_recently_watched_page/home_recently_watched_page.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/profile_page/profile_page.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/saved_page/saved_page.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/search_page/search_page.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/widgets/custom_bottom_bar.dart';

class HomeTabContainerScreen extends ConsumerStatefulWidget {
  const HomeTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomeTabContainerScreenState createState() => HomeTabContainerScreenState();
}

class HomeTabContainerScreenState extends ConsumerState<HomeTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildWidget(context),
                SizedBox(height: 25.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "lbl_catagories".tr,
                      style: CustomTextStyles.titleMediumSemiBold,
                    ),
                  ),
                ),
                SizedBox(height: 10.v),
                _buildTabview(context),
                _buildTabBarView(context),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return SizedBox(
      height: 297.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Consumer(
            builder: (context, ref, _) {
              return CarouselSlider.builder(
                options: CarouselOptions(
                  height: 297.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (
                    index,
                    reason,
                  ) {
                    ref.watch(homeTabContainerNotifier).sliderIndex = index;
                  },
                ),
                itemCount: ref
                        .watch(homeTabContainerNotifier)
                        .homeTabContainerModelObj
                        ?.widgetItemList
                        .length ??
                    0,
                itemBuilder: (context, index, realIndex) {
                  WidgetItemModel model = ref
                          .watch(homeTabContainerNotifier)
                          .homeTabContainerModelObj
                          ?.widgetItemList[index] ??
                      WidgetItemModel();
                  return WidgetItemWidget(
                    model,
                  );
                },
              );
            },
          ),
          Align(
            alignment: Alignment.center,
            child: Consumer(
              builder: (context, ref, _) {
                return SizedBox(
                  height: 297.v,
                  child: AnimatedSmoothIndicator(
                    activeIndex:
                        ref.watch(homeTabContainerNotifier).sliderIndex,
                    count: ref
                            .watch(homeTabContainerNotifier)
                            .homeTabContainerModelObj
                            ?.widgetItemList
                            .length ??
                        0,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                      spacing: 7.05,
                      activeDotColor: theme.colorScheme.primary,
                      dotColor: appTheme.gray3008d,
                      dotHeight: 5.v,
                      dotWidth: 4.h,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 34.v,
      width: 359.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.whiteA700,
        labelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.whiteA700,
        unselectedLabelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            17.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_all".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_action".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_comedy".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_romance".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_horor".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
      height: 383.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          HomePage(),
          HomePage(),
          HomePage(),
          HomePage(),
          HomePage(),
        ],
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
