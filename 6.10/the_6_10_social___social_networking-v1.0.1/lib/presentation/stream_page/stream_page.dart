import '../stream_page/widgets/stream_item_widget.dart';
import 'models/stream_item_model.dart';
import 'notifier/stream_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_10_social___social_networking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class StreamPage extends ConsumerStatefulWidget {
  const StreamPage({Key? key})
      : super(
          key: key,
        );

  @override
  StreamPageState createState() => StreamPageState();
}

class StreamPageState extends ConsumerState<StreamPage>
    with AutomaticKeepAliveClientMixin<StreamPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimary,
          child: Column(
            children: [
              SizedBox(height: 17.v),
              _buildStream(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStream(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
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
                height: 1.v,
              );
            },
            itemCount: ref
                    .watch(streamNotifier)
                    .streamModelObj
                    ?.streamItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              StreamItemModel model = ref
                      .watch(streamNotifier)
                      .streamModelObj
                      ?.streamItemList[index] ??
                  StreamItemModel();
              return StreamItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
