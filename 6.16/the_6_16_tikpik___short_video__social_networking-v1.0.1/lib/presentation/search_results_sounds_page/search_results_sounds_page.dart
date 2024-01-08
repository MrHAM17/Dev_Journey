import '../search_results_sounds_page/widgets/searchresultssounds_item_widget.dart';
import 'models/searchresultssounds_item_model.dart';
import 'notifier/search_results_sounds_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SearchResultsSoundsPage extends ConsumerStatefulWidget {
  const SearchResultsSoundsPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchResultsSoundsPageState createState() => SearchResultsSoundsPageState();
}

class SearchResultsSoundsPageState
    extends ConsumerState<SearchResultsSoundsPage>
    with AutomaticKeepAliveClientMixin<SearchResultsSoundsPage> {
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
              SizedBox(height: 24.v),
              _buildSearchresultssounds(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchresultssounds(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Consumer(
        builder: (context, ref, _) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 24.v,
              );
            },
            itemCount: ref
                    .watch(searchResultsSoundsNotifier)
                    .searchResultsSoundsModelObj
                    ?.searchresultssoundsItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              SearchresultssoundsItemModel model = ref
                      .watch(searchResultsSoundsNotifier)
                      .searchResultsSoundsModelObj
                      ?.searchresultssoundsItemList[index] ??
                  SearchresultssoundsItemModel();
              return SearchresultssoundsItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
