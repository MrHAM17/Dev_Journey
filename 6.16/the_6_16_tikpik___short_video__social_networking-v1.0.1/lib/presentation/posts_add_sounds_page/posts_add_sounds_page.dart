import '../posts_add_sounds_page/widgets/postsaddsounds_item_widget.dart';
import 'models/postsaddsounds_item_model.dart';
import 'notifier/posts_add_sounds_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class PostsAddSoundsPage extends ConsumerStatefulWidget {
  const PostsAddSoundsPage({Key? key})
      : super(
          key: key,
        );

  @override
  PostsAddSoundsPageState createState() => PostsAddSoundsPageState();
}

class PostsAddSoundsPageState extends ConsumerState<PostsAddSoundsPage>
    with AutomaticKeepAliveClientMixin<PostsAddSoundsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              _buildPostsAddSounds(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPostsAddSounds(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
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
                height: 24.v,
              );
            },
            itemCount: ref
                    .watch(postsAddSoundsNotifier)
                    .postsAddSoundsModelObj
                    ?.postsaddsoundsItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              PostsaddsoundsItemModel model = ref
                      .watch(postsAddSoundsNotifier)
                      .postsAddSoundsModelObj
                      ?.postsaddsoundsItemList[index] ??
                  PostsaddsoundsItemModel();
              return PostsaddsoundsItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
