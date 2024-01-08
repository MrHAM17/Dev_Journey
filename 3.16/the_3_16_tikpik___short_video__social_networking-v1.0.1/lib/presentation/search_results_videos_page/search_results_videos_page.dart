import '../search_results_videos_page/widgets/searchresultsvideos_item_widget.dart';
import 'bloc/search_results_videos_bloc.dart';
import 'models/search_results_videos_model.dart';
import 'models/searchresultsvideos_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SearchResultsVideosPage extends StatefulWidget {
  const SearchResultsVideosPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchResultsVideosPageState createState() => SearchResultsVideosPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchResultsVideosBloc>(
      create: (context) => SearchResultsVideosBloc(SearchResultsVideosState(
        searchResultsVideosModelObj: SearchResultsVideosModel(),
      ))
        ..add(SearchResultsVideosInitialEvent()),
      child: SearchResultsVideosPage(),
    );
  }
}

class SearchResultsVideosPageState extends State<SearchResultsVideosPage>
    with AutomaticKeepAliveClientMixin<SearchResultsVideosPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              SizedBox(height: 10.v),
              _buildSearchresultsvideos(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchresultsvideos(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: BlocSelector<SearchResultsVideosBloc, SearchResultsVideosState,
          SearchResultsVideosModel?>(
        selector: (state) => state.searchResultsVideosModelObj,
        builder: (context, searchResultsVideosModelObj) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 329.v,
              crossAxisCount: 2,
              mainAxisSpacing: 8.h,
              crossAxisSpacing: 8.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: searchResultsVideosModelObj
                    ?.searchresultsvideosItemList.length ??
                0,
            itemBuilder: (context, index) {
              SearchresultsvideosItemModel model = searchResultsVideosModelObj
                      ?.searchresultsvideosItemList[index] ??
                  SearchresultsvideosItemModel();
              return SearchresultsvideosItemWidget(
                model,
                onTapRadioGroup: (value) {
                  context.read<SearchResultsVideosBloc>().add(
                      SearchresultsvideosItemEvent(
                          index: index, radioGroup: value));
                },
              );
            },
          );
        },
      ),
    );
  }
}
