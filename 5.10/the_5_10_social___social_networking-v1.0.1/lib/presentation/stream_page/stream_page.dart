import '../stream_page/widgets/stream_item_widget.dart';
import 'models/stream_item_model.dart';
import 'models/stream_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_10_social___social_networking/core/app_export.dart';
import 'provider/stream_provider.dart';

// ignore_for_file: must_be_immutable
class StreamPage extends StatefulWidget {
  const StreamPage({Key? key})
      : super(
          key: key,
        );

  @override
  StreamPageState createState() => StreamPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => StreamProvider(),
      child: StreamPage(),
    );
  }
}

class StreamPageState extends State<StreamPage>
    with AutomaticKeepAliveClientMixin<StreamPage> {
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
      child: Consumer<StreamProvider>(
        builder: (context, provider, child) {
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
            itemCount: provider.streamModelObj.streamItemList.length,
            itemBuilder: (context, index) {
              StreamItemModel model =
                  provider.streamModelObj.streamItemList[index];
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
