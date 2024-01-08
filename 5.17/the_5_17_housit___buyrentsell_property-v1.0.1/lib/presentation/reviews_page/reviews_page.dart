import '../reviews_page/widgets/layout26_item_widget.dart';import 'models/layout26_item_model.dart';import 'models/reviews_model.dart';import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'provider/reviews_provider.dart';class ReviewsPage extends StatefulWidget {const ReviewsPage({Key? key}) : super(key: key);

@override ReviewsPageState createState() =>  ReviewsPageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => ReviewsProvider(), child: ReviewsPage()); } 
 }
class ReviewsPageState extends State<ReviewsPage> with  AutomaticKeepAliveClientMixin<ReviewsPage> {@override bool get wantKeepAlive =>  true;

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 36.v), _buildReviewList(context)]))))); } 
/// Section Widget
Widget _buildReviewList(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_user_reviews".tr, style: theme.textTheme.titleMedium), SizedBox(height: 16.v), Consumer<ReviewsProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 10.v);}, itemCount: provider.reviewsModelObj.layout26ItemList.length, itemBuilder: (context, index) {Layout26ItemModel model = provider.reviewsModelObj.layout26ItemList[index]; return Layout26ItemWidget(model);});})])); } 
 }
