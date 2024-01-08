import '../all_reviews_page/widgets/allreviews_item_widget.dart';import 'models/all_reviews_model.dart';import 'models/allreviews_item_model.dart';import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'provider/all_reviews_provider.dart';class AllReviewsPage extends StatefulWidget {const AllReviewsPage({Key? key}) : super(key: key);

@override AllReviewsPageState createState() =>  AllReviewsPageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => AllReviewsProvider(), child: AllReviewsPage()); } 
 }
class AllReviewsPageState extends State<AllReviewsPage> with  AutomaticKeepAliveClientMixin<AllReviewsPage> {@override bool get wantKeepAlive =>  true;

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 17.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_user_reviews".tr, style: theme.textTheme.titleMedium), SizedBox(height: 15.v), _buildAllReviews(context)]))]))))); } 
/// Section Widget
Widget _buildAllReviews(BuildContext context) { return Consumer<AllReviewsProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 19.v);}, itemCount: provider.allReviewsModelObj.allreviewsItemList.length, itemBuilder: (context, index) {AllreviewsItemModel model = provider.allReviewsModelObj.allreviewsItemList[index]; return AllreviewsItemWidget(model);});}); } 
 }
