import 'notifier/search_eight_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_20_movie_streaming/core/app_export.dart';
import 'package:the_6_20_movie_streaming/widgets/app_bar/appbar_title.dart';
import 'package:the_6_20_movie_streaming/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_6_20_movie_streaming/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_20_movie_streaming/widgets/custom_search_view.dart';

class SearchEightScreen extends ConsumerStatefulWidget {
  const SearchEightScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SearchEightScreenState createState() => SearchEightScreenState();
}

class SearchEightScreenState extends ConsumerState<SearchEightScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 24.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Consumer(
                      builder: (context, ref, _) {
                        return CustomSearchView(
                          controller:
                              ref.watch(searchEightNotifier).searchController,
                          hintText: "msg_search_for_movies".tr,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 32.v),
                  Divider(),
                  SizedBox(height: 23.v),
                  Text(
                    "lbl_trending_search".tr,
                    style: CustomTextStyles.headlineSmallMedium,
                  ),
                  SizedBox(height: 20.v),
                  Divider(),
                  SizedBox(height: 17.v),
                  Text(
                    "lbl_treasure_island".tr,
                    style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                  ),
                  SizedBox(height: 19.v),
                  Text(
                    "lbl_love_in_trouble".tr,
                    style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                  ),
                  SizedBox(height: 19.v),
                  Text(
                    "lbl_hotel_de_luna".tr,
                    style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                  ),
                  SizedBox(height: 19.v),
                  Text(
                    "lbl_the_heirs".tr,
                    style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                  ),
                  SizedBox(height: 20.v),
                  Text(
                    "msg_what_s_wrong_with".tr,
                    style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                  ),
                  SizedBox(height: 19.v),
                  Text(
                    "lbl_moby_dick".tr,
                    style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                  ),
                  SizedBox(height: 19.v),
                  Text(
                    "lbl_bullet_boy".tr,
                    style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "lbl_search".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIconOnprimarycontainer,
          margin: EdgeInsets.only(left: 16.h),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIconOnprimarycontainer24x24,
          margin: EdgeInsets.symmetric(horizontal: 16.h),
        ),
      ],
    );
  }
}
