import '../events_page/widgets/events_item_widget.dart';
import 'models/events_item_model.dart';
import 'notifier/events_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_09_social_dashboards_ui_kit/core/app_export.dart';

// ignore_for_file: must_be_immutable
class EventsPage extends ConsumerStatefulWidget {
  const EventsPage({Key? key})
      : super(
          key: key,
        );

  @override
  EventsPageState createState() => EventsPageState();
}

class EventsPageState extends ConsumerState<EventsPage>
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
        child: Consumer(
          builder: (context, ref, _) {
            return ListView.separated(
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
              itemCount: ref
                      .watch(eventsNotifier)
                      .eventsModelObj
                      ?.eventsItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                EventsItemModel model = ref
                        .watch(eventsNotifier)
                        .eventsModelObj
                        ?.eventsItemList[index] ??
                    EventsItemModel();
                return EventsItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
