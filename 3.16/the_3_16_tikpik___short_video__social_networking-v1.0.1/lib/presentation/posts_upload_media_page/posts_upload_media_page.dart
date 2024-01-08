import '../posts_upload_media_page/widgets/autolayoutvertical5_item_widget.dart';
import 'bloc/posts_upload_media_bloc.dart';
import 'models/autolayoutvertical5_item_model.dart';
import 'models/posts_upload_media_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class PostsUploadMediaPage extends StatefulWidget {
  const PostsUploadMediaPage({Key? key})
      : super(
          key: key,
        );

  @override
  PostsUploadMediaPageState createState() => PostsUploadMediaPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<PostsUploadMediaBloc>(
      create: (context) => PostsUploadMediaBloc(PostsUploadMediaState(
        postsUploadMediaModelObj: PostsUploadMediaModel(),
      ))
        ..add(PostsUploadMediaInitialEvent()),
      child: PostsUploadMediaPage(),
    );
  }
}

class PostsUploadMediaPageState extends State<PostsUploadMediaPage>
    with AutomaticKeepAliveClientMixin<PostsUploadMediaPage> {
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
              _buildAutoLayoutVertical(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutVertical(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: BlocSelector<PostsUploadMediaBloc, PostsUploadMediaState,
          PostsUploadMediaModel?>(
        selector: (state) => state.postsUploadMediaModelObj,
        builder: (context, postsUploadMediaModelObj) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 122.v,
              crossAxisCount: 3,
              mainAxisSpacing: 8.h,
              crossAxisSpacing: 8.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount:
                postsUploadMediaModelObj?.autolayoutvertical5ItemList.length ??
                    0,
            itemBuilder: (context, index) {
              Autolayoutvertical5ItemModel model = postsUploadMediaModelObj
                      ?.autolayoutvertical5ItemList[index] ??
                  Autolayoutvertical5ItemModel();
              return Autolayoutvertical5ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
