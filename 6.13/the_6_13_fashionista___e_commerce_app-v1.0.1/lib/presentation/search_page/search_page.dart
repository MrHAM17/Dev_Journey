import '../search_page/widgets/frame6_item_widget.dart';
import '../search_page/widgets/frame7_item_widget.dart';
import 'models/frame6_item_model.dart';
import 'models/frame7_item_model.dart';
import 'notifier/search_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_6_13_fashionista___e_commerce_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_6_13_fashionista___e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_13_fashionista___e_commerce_app/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends ConsumerState<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 23.v),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Consumer(
                  builder: (context, ref, _) {
                    return CustomSearchView(
                      controller: ref.watch(searchNotifier).searchController,
                      hintText: "lbl_search".tr,
                    );
                  },
                ),
              ),
              SizedBox(height: 23.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "lbl_recent_search".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              _buildFrame(context),
              SizedBox(height: 25.v),
              _buildFrame1(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_search".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return SizedBox(
      height: 58.v,
      child: Consumer(
        builder: (context, ref, _) {
          return ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 24.h,
              );
            },
            itemCount: ref
                    .watch(searchNotifier)
                    .searchModelObj
                    ?.frame6ItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              Frame6ItemModel model = ref
                      .watch(searchNotifier)
                      .searchModelObj
                      ?.frame6ItemList[index] ??
                  Frame6ItemModel();
              return Frame6ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_items_that_you_may".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(right: 16.h),
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
                      height: 14.v,
                    );
                  },
                  itemCount: ref
                          .watch(searchNotifier)
                          .searchModelObj
                          ?.frame7ItemList
                          .length ??
                      0,
                  itemBuilder: (context, index) {
                    Frame7ItemModel model = ref
                            .watch(searchNotifier)
                            .searchModelObj
                            ?.frame7ItemList[index] ??
                        Frame7ItemModel();
                    return Frame7ItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
