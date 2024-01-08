import '../language_screen/widgets/language_item_widget.dart';
import 'models/language_item_model.dart';
import 'notifier/language_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_title.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/widgets/custom_search_view.dart';

class LanguageScreen extends ConsumerStatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  LanguageScreenState createState() => LanguageScreenState();
}

class LanguageScreenState extends ConsumerState<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                child: Column(children: [
                  Consumer(builder: (context, ref, _) {
                    return CustomSearchView(
                        controller:
                            ref.watch(languageNotifier).searchController,
                        hintText: "lbl_search_language".tr);
                  }),
                  SizedBox(height: 24.v),
                  _buildLanguage(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 51.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 7.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_setting".tr));
  }

  /// Section Widget
  Widget _buildLanguage(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 16.v);
          },
          itemCount: ref
                  .watch(languageNotifier)
                  .languageModelObj
                  ?.languageItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            LanguageItemModel model = ref
                    .watch(languageNotifier)
                    .languageModelObj
                    ?.languageItemList[index] ??
                LanguageItemModel();
            return LanguageItemWidget(model);
          });
    });
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
