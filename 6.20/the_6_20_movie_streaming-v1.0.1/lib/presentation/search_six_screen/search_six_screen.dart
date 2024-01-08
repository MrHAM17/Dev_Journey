import '../search_six_screen/widgets/movies7_item_widget.dart';
import '../search_six_screen/widgets/movies8_item_widget.dart';
import '../search_six_screen/widgets/movies9_item_widget.dart';
import 'models/movies7_item_model.dart';
import 'models/movies8_item_model.dart';
import 'models/movies9_item_model.dart';
import 'notifier/search_six_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_20_movie_streaming/core/app_export.dart';
import 'package:the_6_20_movie_streaming/widgets/app_bar/appbar_title_searchview_one.dart';
import 'package:the_6_20_movie_streaming/widgets/app_bar/custom_app_bar.dart';

class SearchSixScreen extends ConsumerStatefulWidget {
  const SearchSixScreen({Key? key}) : super(key: key);

  @override
  SearchSixScreenState createState() => SearchSixScreenState();
}

class SearchSixScreenState extends ConsumerState<SearchSixScreen> {
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
                              Text("msg_search_result_for2".tr,
                                  style:
                                      CustomTextStyles.titleMediumWhiteA70018),
                              SizedBox(height: 28.v),
                              Text("lbl_movies".tr,
                                  style: theme.textTheme.titleSmall),
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
        title: Consumer(builder: (context, ref, _) {
          return AppbarTitleSearchviewOne(
              hintText: "lbl_love".tr,
              controller: ref.watch(searchSixNotifier).searchController);
        }));
  }

  /// Section Widget
  Widget _buildMovies(BuildContext context) {
    return SizedBox(
        height: 223.v,
        child: Consumer(builder: (context, ref, _) {
          return ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 16.h);
              },
              itemCount: ref
                      .watch(searchSixNotifier)
                      .searchSixModelObj
                      ?.movies7ItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                Movies7ItemModel model = ref
                        .watch(searchSixNotifier)
                        .searchSixModelObj
                        ?.movies7ItemList[index] ??
                    Movies7ItemModel();
                return Movies7ItemWidget(model, onTapMovieCard: () {
                  onTapMovieCard(context);
                });
              });
        }));
  }

  /// Section Widget
  Widget _buildMovies1(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_tv_channels".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 18.v),
      SizedBox(
          height: 223.v,
          child: Consumer(builder: (context, ref, _) {
            return ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 16.h);
                },
                itemCount: ref
                        .watch(searchSixNotifier)
                        .searchSixModelObj
                        ?.movies8ItemList
                        .length ??
                    0,
                itemBuilder: (context, index) {
                  Movies8ItemModel model = ref
                          .watch(searchSixNotifier)
                          .searchSixModelObj
                          ?.movies8ItemList[index] ??
                      Movies8ItemModel();
                  return Movies8ItemWidget(model, onTapMovieCard: () {
                    onTapMovieCard(context);
                  });
                });
          })),
      SizedBox(height: 27.v),
      Text("lbl_playlist".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 17.v),
      SizedBox(
          height: 223.v,
          child: Consumer(builder: (context, ref, _) {
            return ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 16.h);
                },
                itemCount: ref
                        .watch(searchSixNotifier)
                        .searchSixModelObj
                        ?.movies9ItemList
                        .length ??
                    0,
                itemBuilder: (context, index) {
                  Movies9ItemModel model = ref
                          .watch(searchSixNotifier)
                          .searchSixModelObj
                          ?.movies9ItemList[index] ??
                      Movies9ItemModel();
                  return Movies9ItemWidget(model, onTapMovieCard: () {
                    onTapMovieCard(context);
                  });
                });
          }))
    ]);
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }
}
