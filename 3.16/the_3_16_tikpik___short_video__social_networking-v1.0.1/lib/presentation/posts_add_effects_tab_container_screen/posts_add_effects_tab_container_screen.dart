import 'bloc/posts_add_effects_tab_container_bloc.dart';
import 'models/posts_add_effects_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/posts_add_effects_page/posts_add_effects_page.dart';

class PostsAddEffectsTabContainerScreen extends StatefulWidget {
  const PostsAddEffectsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PostsAddEffectsTabContainerScreenState createState() =>
      PostsAddEffectsTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<PostsAddEffectsTabContainerBloc>(
      create: (context) =>
          PostsAddEffectsTabContainerBloc(PostsAddEffectsTabContainerState(
        postsAddEffectsTabContainerModelObj: PostsAddEffectsTabContainerModel(),
      ))
            ..add(PostsAddEffectsTabContainerInitialEvent()),
      child: PostsAddEffectsTabContainerScreen(),
    );
  }
}

class PostsAddEffectsTabContainerScreenState
    extends State<PostsAddEffectsTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsAddEffectsTabContainerBloc,
        PostsAddEffectsTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgFrameGray300,
                    height: 3.v,
                    width: 38.h,
                  ),
                  SizedBox(height: 23.v),
                  Text(
                    "lbl_effects".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 24.v),
                  Divider(
                    indent: 24.h,
                    endIndent: 24.h,
                  ),
                  SizedBox(height: 25.v),
                  Container(
                    height: 38.v,
                    width: 330.h,
                    margin: EdgeInsets.only(left: 24.h),
                    child: TabBar(
                      controller: tabviewController,
                      labelPadding: EdgeInsets.zero,
                      labelColor: theme.colorScheme.primary,
                      labelStyle: TextStyle(
                        fontSize: 18.fSize,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w600,
                      ),
                      unselectedLabelColor: appTheme.gray500,
                      unselectedLabelStyle: TextStyle(
                        fontSize: 18.fSize,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w600,
                      ),
                      indicatorColor: theme.colorScheme.primary,
                      tabs: [
                        Tab(
                          child: Text(
                            "lbl_trending".tr,
                          ),
                        ),
                        Tab(
                          child: Text(
                            "lbl_new".tr,
                          ),
                        ),
                      ],
                    ),
                  ),
                  _buildTabBarView(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
      height: 336.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          PostsAddEffectsPage(),
          PostsAddEffectsPage(),
        ],
      ),
    );
  }
}
