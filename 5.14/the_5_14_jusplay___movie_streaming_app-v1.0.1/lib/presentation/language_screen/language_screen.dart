import '../language_screen/widgets/language_item_widget.dart';
import 'models/language_item_model.dart';
import 'models/language_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_title.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/widgets/custom_search_view.dart';
import 'provider/language_provider.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  LanguageScreenState createState() => LanguageScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LanguageProvider(), child: LanguageScreen());
  }
}

class LanguageScreenState extends State<LanguageScreen> {
  @override
  void initState() {
    super.initState();
    NavigatorService.pushNamed(
      AppRoutes.settingScreen,
    );
  }

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
                  Selector<LanguageProvider, TextEditingController?>(
                      selector: (context, provider) =>
                          provider.searchController,
                      builder: (context, searchController, child) {
                        return CustomSearchView(
                            controller: searchController,
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
    return Consumer<LanguageProvider>(builder: (context, provider, child) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 16.v);
          },
          itemCount: provider.languageModelObj.languageItemList.length,
          itemBuilder: (context, index) {
            LanguageItemModel model =
                provider.languageModelObj.languageItemList[index];
            return LanguageItemWidget(model);
          });
    });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
