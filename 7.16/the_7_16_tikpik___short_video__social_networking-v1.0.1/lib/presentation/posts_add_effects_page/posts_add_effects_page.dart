import '../posts_add_effects_page/widgets/postsaddeffects_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class PostsAddEffectsPage extends StatefulWidget {
  const PostsAddEffectsPage({Key? key})
      : super(
          key: key,
        );

  @override
  PostsAddEffectsPageState createState() => PostsAddEffectsPageState();
}

class PostsAddEffectsPageState extends State<PostsAddEffectsPage>
    with AutomaticKeepAliveClientMixin<PostsAddEffectsPage> {
  @override
  bool get wantKeepAlive => true;
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
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 289.v,
                    crossAxisCount: 3,
                    mainAxisSpacing: 20.h,
                    crossAxisSpacing: 20.h,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return PostsaddeffectsItemWidget();
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
