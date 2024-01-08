import 'controller/search_results_songs_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/presentation/search_result_top_page/search_result_top_page.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/presentation/search_results_songs_page/search_results_songs_page.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/presentation/song_play_over_screen_page/song_play_over_screen_page.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class SearchResultsSongsTabContainerScreen
    extends GetWidget<SearchResultsSongsTabContainerController> {
  const SearchResultsSongsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

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
                child: CustomSearchView(
                  controller: controller.searchController,
                  hintText: "lbl_starboy".tr,
                ),
              ),
              SizedBox(height: 24.v),
              _buildTabview(),
              Expanded(
                child: SizedBox(
                  height: 740.v,
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      SearchResultsSongsPage(),
                      SongPlayOverScreenPage(),
                      SongPlayOverScreenPage(),
                      SongPlayOverScreenPage(),
                      SongPlayOverScreenPage(),
                      SongPlayOverScreenPage(),
                      SearchResultTopPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 38.v,
      width: double.maxFinite,
      child: TabBar(
        controller: controller.tabviewController,
        isScrollable: true,
        labelColor: appTheme.whiteA700,
        unselectedLabelColor: theme.colorScheme.onPrimaryContainer,
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
              "lbl_profile".tr,
            ),
          ),
        ],
      ),
    );
  }
}
