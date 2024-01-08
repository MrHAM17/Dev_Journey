import '../events_page/widgets/events_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_09_social_dashboards_ui_kit/core/app_export.dart';

// ignore_for_file: must_be_immutable
class EventsPage extends StatefulWidget {
  const EventsPage({Key? key})
      : super(
          key: key,
        );

  @override
  EventsPageState createState() => EventsPageState();
}

class EventsPageState extends State<EventsPage>
    with AutomaticKeepAliveClientMixin<EventsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 26.v),
              _buildEvents(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEvents(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.h),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 18.v,
            );
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return EventsItemWidget();
          },
        ),
      ),
    );
  }
}
