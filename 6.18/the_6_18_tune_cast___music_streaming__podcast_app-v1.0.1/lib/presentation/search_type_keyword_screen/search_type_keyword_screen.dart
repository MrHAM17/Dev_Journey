import '../search_type_keyword_screen/widgets/searchtypekeyword_item_widget.dart';
import 'models/searchtypekeyword_item_model.dart';
import 'notifier/search_type_keyword_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/widgets/custom_search_view.dart';

class SearchTypeKeywordScreen extends ConsumerStatefulWidget {
  const SearchTypeKeywordScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SearchTypeKeywordScreenState createState() => SearchTypeKeywordScreenState();
}

class SearchTypeKeywordScreenState
    extends ConsumerState<SearchTypeKeywordScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(24.h),
          child: Column(
            children: [
              Consumer(
                builder: (context, ref, _) {
                  return CustomSearchView(
                    controller:
                        ref.watch(searchTypeKeywordNotifier).searchController,
                    hintText: "lbl_abcdefghijklm".tr,
                    contentPadding: EdgeInsets.only(
                      top: 19.v,
                      right: 30.h,
                      bottom: 19.v,
                    ),
                  );
                },
              ),
              SizedBox(height: 23.v),
              _buildAutoLayoutHorizontal(context),
              SizedBox(height: 24.v),
              Divider(),
              SizedBox(height: 23.v),
              _buildSearchTypeKeyword(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "lbl_recent_searches".tr,
          style: theme.textTheme.titleLarge,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(
            "lbl_clear_all".tr,
            style: CustomTextStyles.titleMediumOnPrimaryContainer16,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSearchTypeKeyword(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 25.v,
            );
          },
          itemCount: ref
                  .watch(searchTypeKeywordNotifier)
                  .searchTypeKeywordModelObj
                  ?.searchtypekeywordItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            SearchtypekeywordItemModel model = ref
                    .watch(searchTypeKeywordNotifier)
                    .searchTypeKeywordModelObj
                    ?.searchtypekeywordItemList[index] ??
                SearchtypekeywordItemModel();
            return SearchtypekeywordItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
