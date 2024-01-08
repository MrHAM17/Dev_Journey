import '../stream_page/widgets/stream_item_widget.dart';
import 'bloc/stream_bloc.dart';
import 'models/stream_item_model.dart';
import 'models/stream_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_10_social___social_networking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class StreamPage extends StatefulWidget {
  const StreamPage({Key? key})
      : super(
          key: key,
        );

  @override
  StreamPageState createState() => StreamPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<StreamBloc>(
      create: (context) => StreamBloc(StreamState(
        streamModelObj: StreamModel(),
      ))
        ..add(StreamInitialEvent()),
      child: StreamPage(),
    );
  }
}

class StreamPageState extends State<StreamPage>
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
      child: BlocSelector<StreamBloc, StreamState, StreamModel?>(
        selector: (state) => state.streamModelObj,
        builder: (context, streamModelObj) {
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
            itemCount: streamModelObj?.streamItemList.length ?? 0,
            itemBuilder: (context, index) {
              StreamItemModel model =
                  streamModelObj?.streamItemList[index] ?? StreamItemModel();
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
