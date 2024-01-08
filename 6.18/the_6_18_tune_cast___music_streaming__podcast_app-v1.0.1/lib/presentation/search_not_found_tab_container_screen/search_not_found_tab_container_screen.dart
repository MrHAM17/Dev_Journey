import 'notifier/search_not_found_tab_container_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/search_not_found_page/search_not_found_page.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/widgets/custom_search_view.dart';

class SearchNotFoundTabContainerScreen extends ConsumerStatefulWidget {
  const SearchNotFoundTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SearchNotFoundTabContainerScreenState createState() =>
      SearchNotFoundTabContainerScreenState();
}

class SearchNotFoundTabContainerScreenState
    extends ConsumerState<SearchNotFoundTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 9, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Consumer(
                  builder: (context, ref, _) {
                    return CustomSearchView(
                      controller: ref
                          .watch(searchNotFoundTabContainerNotifier)
                          .searchController,
                      hintText: "lbl_abcdefghijklm2".tr,
                    );
                  },
                ),
              ),
              SizedBox(height: 24.v),
              _buildTabview(context),
              SizedBox(
                height: 740.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    SearchNotFoundPage(),
                    SearchNotFoundPage(),
                    SearchNotFoundPage(),
                    SearchNotFoundPage(),
                    SearchNotFoundPage(),
                    SearchNotFoundPage(),
                    SearchNotFoundPage(),
                    SearchNotFoundPage(),
                    SearchNotFoundPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 38.v,
      width: 404.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.whiteA700,
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: theme.colorScheme.onPrimaryContainer,
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.onPrimaryContainer,
          borderRadius: BorderRadius.circular(
            19.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_top".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_songs".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_artists".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_albums".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_podcasts".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_playlist".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_playlists".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_profile".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_profiles".tr,
            ),
          ),
        ],
      ),
    );
  }
}
