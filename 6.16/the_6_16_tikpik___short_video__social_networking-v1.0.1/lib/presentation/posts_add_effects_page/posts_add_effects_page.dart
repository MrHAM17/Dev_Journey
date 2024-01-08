import '../posts_add_effects_page/widgets/postsaddeffects_item_widget.dart';
import 'models/postsaddeffects_item_model.dart';
import 'notifier/posts_add_effects_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class PostsAddEffectsPage extends ConsumerStatefulWidget {
  const PostsAddEffectsPage({Key? key})
      : super(
          key: key,
        );

  @override
  PostsAddEffectsPageState createState() => PostsAddEffectsPageState();
}

class PostsAddEffectsPageState extends ConsumerState<PostsAddEffectsPage>
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
                child: Consumer(
                  builder: (context, ref, _) {
                    return GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 289.v,
                        crossAxisCount: 3,
                        mainAxisSpacing: 20.h,
                        crossAxisSpacing: 20.h,
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: ref
                              .watch(postsAddEffectsNotifier)
                              .postsAddEffectsModelObj
                              ?.postsaddeffectsItemList
                              .length ??
                          0,
                      itemBuilder: (context, index) {
                        PostsaddeffectsItemModel model = ref
                                .watch(postsAddEffectsNotifier)
                                .postsAddEffectsModelObj
                                ?.postsaddeffectsItemList[index] ??
                            PostsaddeffectsItemModel();
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
