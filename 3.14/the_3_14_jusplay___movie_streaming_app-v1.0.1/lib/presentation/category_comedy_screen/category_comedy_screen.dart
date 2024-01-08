import '../category_comedy_screen/widgets/categorycomedy_item_widget.dart';
import 'bloc/category_comedy_bloc.dart';
import 'models/category_comedy_model.dart';
import 'models/categorycomedy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_title.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';

class CategoryComedyScreen extends StatelessWidget {
  const CategoryComedyScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CategoryComedyBloc>(
        create: (context) => CategoryComedyBloc(
            CategoryComedyState(categoryComedyModelObj: CategoryComedyModel()))
          ..add(CategoryComedyInitialEvent()),
        child: CategoryComedyScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 18.h, top: 25.v, right: 18.h),
                child: BlocSelector<CategoryComedyBloc, CategoryComedyState,
                        CategoryComedyModel?>(
                    selector: (state) => state.categoryComedyModelObj,
                    builder: (context, categoryComedyModelObj) {
                      return GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: 141.v,
                                  crossAxisCount: 3,
                                  mainAxisSpacing: 16.h,
                                  crossAxisSpacing: 16.h),
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: categoryComedyModelObj
                                  ?.categorycomedyItemList.length ??
                              0,
                          itemBuilder: (context, index) {
                            CategorycomedyItemModel model =
                                categoryComedyModelObj
                                        ?.categorycomedyItemList[index] ??
                                    CategorycomedyItemModel();
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
