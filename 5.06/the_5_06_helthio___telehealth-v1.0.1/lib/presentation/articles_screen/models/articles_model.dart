import 'frametwentyfour_item_model.dart';
import '../../../core/app_export.dart';
import 'eightynine_item_model.dart';
import 'sixty_item_model.dart';

class ArticlesModel {
  List<FrametwentyfourItemModel> frametwentyfourItemList =
      List.generate(3, (index) => FrametwentyfourItemModel());

  List<EightynineItemModel> eightynineItemList = [
    EightynineItemModel(
        covidNineteen: ImageConstant.imgRectangle460,
        covidNineteen1: "Covid-19",
        comparingtheAstraZen:
            "Comparing the AstraZeneca and Sinovac COVID-19 Vaccines",
        jun: "Jun 12, 2021",
        time: "6 min read"),
    EightynineItemModel(
        covidNineteen: ImageConstant.imgRectangle458,
        covidNineteen1: "Covid-19",
        comparingtheAstraZen: "The Horror Of The Second Wave Of COVID-19",
        jun: "Jun 10, 2021",
        time: "5 min read")
  ];

  List<SixtyItemModel> sixtyItemList = [
    SixtyItemModel(
        image: ImageConstant.imgUnsplash86rvjm9zowy,
        theHealthiest:
            "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist",
        jun: "Jun 10, 2021 ",
        time: "5min read",
        image1: ImageConstant.imgBookmark12x10)
  ];
}
