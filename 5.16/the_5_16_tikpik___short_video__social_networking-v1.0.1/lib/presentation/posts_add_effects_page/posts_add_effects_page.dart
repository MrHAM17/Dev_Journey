import '../posts_add_effects_page/widgets/postsaddeffects_item_widget.dart';
import 'models/posts_add_effects_model.dart';
import 'models/postsaddeffects_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'provider/posts_add_effects_provider.dart';

// ignore_for_file: must_be_immutable
class PostsAddEffectsPage extends StatefulWidget {
  const PostsAddEffectsPage({Key? key})
      : super(
          key: key,
        );

  @override
  PostsAddEffectsPageState createState() => PostsAddEffectsPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PostsAddEffectsProvider(),
      child: PostsAddEffectsPage(),
    );
  }
}

class PostsAddEffectsPageState extends State<PostsAddEffectsPage>
    with AutomaticKeepAliveClientMixin<PostsAddEffectsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.outlineGray100,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Consumer<PostsAddEffectsProvider>(
                  builder: (context, provider, child) {
                    return GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 289.v,
                        crossAxisCount: 3,
                        mainAxisSpacing: 20.h,
                        crossAxisSpacing: 20.h,
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: provider.postsAddEffectsModelObj
                          .postsaddeffectsItemList.length,
                      itemBuilder: (context, index) {
                        PostsaddeffectsItemModel model = provider
                            .postsAddEffectsModelObj
                            .postsaddeffectsItemList[index];
                        return PostsaddeffectsItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
