import '../stream_page/widgets/stream_item_widget.dart';
import 'controller/stream_controller.dart';
import 'models/stream_item_model.dart';
import 'models/stream_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_10_social___social_networking/core/app_export.dart';

class StreamPage extends StatelessWidget {
  StreamPage({Key? key})
      : super(
          key: key,
        );

  StreamController controller = Get.put(StreamController(StreamModel().obs));

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
              _buildStream(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStream() {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Obx(
        () => ListView.separated(
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
          itemCount:
              controller.streamModelObj.value.streamItemList.value.length,
          itemBuilder: (context, index) {
            StreamItemModel model =
                controller.streamModelObj.value.streamItemList.value[index];
            return StreamItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
