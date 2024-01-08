import '../search_six_screen/widgets/movies7_item_widget.dart';
import '../search_six_screen/widgets/movies8_item_widget.dart';
import '../search_six_screen/widgets/movies9_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_20_movie_streaming/core/app_export.dart';
import 'package:the_7_20_movie_streaming/widgets/app_bar/appbar_title_searchview_one.dart';
import 'package:the_7_20_movie_streaming/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class SearchSixScreen extends StatelessWidget {
  SearchSixScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 18.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 16.h, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Search Result for ‘Marvel’",
                                  style:
                                      CustomTextStyles.titleMediumWhiteA70018),
                              SizedBox(height: 28.v),
                              Text("Movies", style: theme.textTheme.titleSmall),
                              SizedBox(height: 18.v),
                              _buildMovies(context),
                              SizedBox(height: 26.v),
                              _buildMovies1(context)
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 48.v,
        centerTitle: true,
        title: AppbarTitleSearchviewOne(
            hintText: "Love", controller: searchController));
  }

  /// Section Widget
  Widget _buildMovies(BuildContext context) {
    return SizedBox(
        height: 223.v,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return Movies7ItemWidget(onTapMovieCard: () {
                onTapMovieCard(context);
              });
            }));
  }

  /// Section Widget
  Widget _buildMovies1(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("TV Channels", style: theme.textTheme.titleSmall),
      SizedBox(height: 18.v),
      SizedBox(
          height: 223.v,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 16.h);
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return Movies8ItemWidget(onTapMovieCard: () {
                  onTapMovieCard(context);
                });
              })),
      SizedBox(height: 27.v),
      Text("Playlist", style: theme.textTheme.titleSmall),
      SizedBox(height: 17.v),
      SizedBox(
          height: 223.v,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 16.h);
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return Movies9ItemWidget(onTapMovieCard: () {
                  onTapMovieCard(context);
                });
              }))
    ]);
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailPageSevenScreen);
  }
}
