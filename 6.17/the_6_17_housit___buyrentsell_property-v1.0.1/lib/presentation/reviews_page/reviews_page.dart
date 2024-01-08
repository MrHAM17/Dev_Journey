import '../reviews_page/widgets/layout26_item_widget.dart';import 'models/layout26_item_model.dart';import 'notifier/reviews_notifier.dart';import 'package:flutter/material.dart';import 'package:the_6_17_housit___buyrentsell_property/core/app_export.dart';class ReviewsPage extends ConsumerStatefulWidget {const ReviewsPage({Key? key}) : super(key: key);

@override ReviewsPageState createState() =>  ReviewsPageState();

 }
class ReviewsPageState extends ConsumerState<ReviewsPage> with  AutomaticKeepAliveClientMixin<ReviewsPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 36.v), _buildReviewList(context)]))))); } 
/// Section Widget
Widget _buildReviewList(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_user_reviews".tr, style: theme.textTheme.titleMedium), SizedBox(height: 16.v), Consumer(builder: (context, ref, _) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 10.v);}, itemCount: ref.watch(reviewsNotifier).reviewsModelObj?.layout26ItemList.length ?? 0, itemBuilder: (context, index) {Layout26ItemModel model = ref.watch(reviewsNotifier).reviewsModelObj?.layout26ItemList[index] ?? Layout26ItemModel(); return Layout26ItemWidget(model);});})])); } 
 }
