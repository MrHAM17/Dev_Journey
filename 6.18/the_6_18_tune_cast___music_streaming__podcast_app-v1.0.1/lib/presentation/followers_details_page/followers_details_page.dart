import '../followers_details_page/widgets/following1_item_widget.dart';
import '../followers_details_page/widgets/ninetyfive_item_widget.dart';
import 'models/following1_item_model.dart';
import 'models/ninetyfive_item_model.dart';
import 'notifier/followers_details_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FollowersDetailsPage extends ConsumerStatefulWidget {
  const FollowersDetailsPage({Key? key})
      : super(
          key: key,
        );

  @override
  FollowersDetailsPageState createState() => FollowersDetailsPageState();
}

class FollowersDetailsPageState extends ConsumerState<FollowersDetailsPage>
    with AutomaticKeepAliveClientMixin<FollowersDetailsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  children: [
                    _buildNinetyFive(context),
                    SizedBox(height: 24.v),
                    _buildFollowing(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyFive(BuildContext context) {
    return Consumer(
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
                  .watch(followersDetailsNotifier)
                  .followersDetailsModelObj
                  ?.ninetyfiveItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            NinetyfiveItemModel model = ref
                    .watch(followersDetailsNotifier)
                    .followersDetailsModelObj
                    ?.ninetyfiveItemList[index] ??
                NinetyfiveItemModel();
            return NinetyfiveItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFollowing(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 1.v,
            );
          },
          itemCount: ref
                  .watch(followersDetailsNotifier)
                  .followersDetailsModelObj
                  ?.following1ItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            Following1ItemModel model = ref
                    .watch(followersDetailsNotifier)
                    .followersDetailsModelObj
                    ?.following1ItemList[index] ??
                Following1ItemModel();
            return Following1ItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
