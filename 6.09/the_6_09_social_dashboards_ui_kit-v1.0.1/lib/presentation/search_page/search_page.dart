import '../search_page/widgets/search_item_widget.dart';
import 'models/search_item_model.dart';
import 'notifier/search_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_09_social_dashboards_ui_kit/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends ConsumerState<SearchPage>
    with AutomaticKeepAliveClientMixin<SearchPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 30.v),
              _buildSearch(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearch(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.h),
        child: Consumer(
          builder: (context, ref, _) {
            return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 470.v,
                crossAxisCount: 1,
                mainAxisSpacing: 1.h,
                crossAxisSpacing: 1.h,
              ),
              physics: BouncingScrollPhysics(),
              itemCount: ref
                      .watch(searchNotifier)
                      .searchModelObj
                      ?.searchItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                SearchItemModel model = ref
                        .watch(searchNotifier)
                        .searchModelObj
                        ?.searchItemList[index] ??
                    SearchItemModel();
                return SearchItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
