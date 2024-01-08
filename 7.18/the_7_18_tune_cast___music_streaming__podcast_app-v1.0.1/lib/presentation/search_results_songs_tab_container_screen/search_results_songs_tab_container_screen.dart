import 'package:flutter/material.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/search_result_top_page/search_result_top_page.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/search_results_songs_page/search_results_songs_page.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/presentation/song_play_over_screen_page/song_play_over_screen_page.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/custom_search_view.dart';

class SearchResultsSongsTabContainerScreen extends StatefulWidget {
  const SearchResultsSongsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SearchResultsSongsTabContainerScreenState createState() =>
      SearchResultsSongsTabContainerScreenState();
}

class SearchResultsSongsTabContainerScreenState
    extends State<SearchResultsSongsTabContainerScreen>
    with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 7, vsync: this);
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
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "Starboy",
                ),
              ),
              SizedBox(height: 24.v),
              _buildTabview(context),
              Expanded(
                child: SizedBox(
                  height: 740.v,
                  child: TabBarView(
                    controller: tabviewController,
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
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 38.v,
      width: double.maxFinite,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.whiteA700,
        unselectedLabelColor: theme.colorScheme.onPrimaryContainer,
        tabs: [
          Tab(
            child: Text(
              "Top",
            ),
          ),
          Tab(
            child: Text(
              "Songs",
            ),
          ),
          Tab(
            child: Text(
              "Artists",
            ),
          ),
          Tab(
            child: Text(
              "Albums",
            ),
          ),
          Tab(
            child: Text(
              "Podcasts",
            ),
          ),
          Tab(
            child: Text(
              "Playlist",
            ),
          ),
          Tab(
            child: Text(
              "Profile",
            ),
          ),
        ],
      ),
    );
  }
}
