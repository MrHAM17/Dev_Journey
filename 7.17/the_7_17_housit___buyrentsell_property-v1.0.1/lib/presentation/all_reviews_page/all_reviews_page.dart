import '../all_reviews_page/widgets/allreviews_item_widget.dart';import 'package:flutter/material.dart';import 'package:the_7_17_housit___buyrentsell_property/core/app_export.dart';class AllReviewsPage extends StatefulWidget {const AllReviewsPage({Key? key}) : super(key: key);

@override AllReviewsPageState createState() =>  AllReviewsPageState();

 }
class AllReviewsPageState extends State<AllReviewsPage> with  AutomaticKeepAliveClientMixin<AllReviewsPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 17.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("User reviews", style: theme.textTheme.titleMedium), SizedBox(height: 15.v), _buildAllReviews(context)]))]))))); } 
/// Section Widget
Widget _buildAllReviews(BuildContext context) { return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 19.v);}, itemCount: 3, itemBuilder: (context, index) {return AllreviewsItemWidget();}); } 
 }
