import '../category_comedy_screen/widgets/categorycomedy_item_widget.dart';
import 'models/category_comedy_model.dart';
import 'models/categorycomedy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_title.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';
import 'provider/category_comedy_provider.dart';

class CategoryComedyScreen extends StatefulWidget {
  const CategoryComedyScreen({Key? key}) : super(key: key);

  @override
  CategoryComedyScreenState createState() => CategoryComedyScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CategoryComedyProvider(),
        child: CategoryComedyScreen());
  }
}

class CategoryComedyScreenState extends State<CategoryComedyScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 18.h, top: 25.v, right: 18.h),
                child: Consumer<CategoryComedyProvider>(
                    builder: (context, provider, child) {
                  return GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 141.v,
                          crossAxisCount: 3,
                          mainAxisSpacing: 16.h,
                          crossAxisSpacing: 16.h),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: provider
                          .categoryComedyModelObj.categorycomedyItemList.length,
                      itemBuilder: (context, index) {
                        CategorycomedyItemModel model = provider
                            .categoryComedyModelObj
                            .categorycomedyItemList[index];
                        return CategorycomedyItemWidget(model);
                      });
                }))));
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
        title: AppbarTitle(text: "lbl_comedy".tr));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
