import '../search_seven_screen/widgets/frameseventynine_item_widget.dart';
import '../search_seven_screen/widgets/searchseven_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_20_movie_streaming/core/app_export.dart';
import 'package:the_7_20_movie_streaming/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class SearchSevenScreen extends StatelessWidget {
  SearchSevenScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 8.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, right: 16.h, bottom: 118.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomSearchView(
                                        controller: searchController,
                                        hintText: "Love"),
                                    SizedBox(height: 14.v),
                                    Text("Search Result for ‘Love’",
                                        style: CustomTextStyles
                                            .titleMediumWhiteA70018),
                                    SizedBox(height: 29.v),
                                    Text("Movies (6)",
                                        style: theme.textTheme.titleSmall),
                                    SizedBox(height: 11.v),
                                    _buildSearchSeven(context),
                                    SizedBox(height: 17.v),
                                    _buildFrameSeventyNine(context),
                                    SizedBox(height: 37.v),
                                    Text("Categories (1)",
                                        style: theme.textTheme.titleSmall),
                                    SizedBox(height: 17.v),
                                    SizedBox(
                                        height: 60.v,
                                        width: 90.h,
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgThumbnailImage33,
                                                  height: 60.v,
                                                  width: 90.h,
                                                  radius: BorderRadius.circular(
                                                      2.h),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Opacity(
                                                      opacity: 0.87,
                                                      child: Text("Love",
                                                          style: theme.textTheme
                                                              .bodyMedium)))
                                            ]))
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildSearchSeven(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 177.v,
            crossAxisCount: 3,
            mainAxisSpacing: 16.h,
            crossAxisSpacing: 16.h),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 7,
        itemBuilder: (context, index) {
          return SearchsevenItemWidget(onTapMovieCard: () {
            onTapMovieCard(context);
          });
        });
  }

  /// Section Widget
  Widget _buildFrameSeventyNine(BuildContext context) {
    return Wrap(
        runSpacing: 8.v,
        spacing: 8.h,
        children:
            List<Widget>.generate(4, (index) => FrameseventynineItemWidget()));
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailPageSevenScreen);
  }
}
