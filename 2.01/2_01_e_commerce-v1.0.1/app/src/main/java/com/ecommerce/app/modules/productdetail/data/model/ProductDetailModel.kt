package com.ecommerce.app.modules.productdetail.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class ProductDetailModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSelectColor: String? = MyApp.getInstance().resources.getString(R.string.lbl_select_color)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSpecification: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_specification)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtShown: String? = MyApp.getInstance().resources.getString(R.string.lbl_shown)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLaserBlueAnth: String? =
      MyApp.getInstance().resources.getString(R.string.msg_laser_blue_anth)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtStyle: String? = MyApp.getInstance().resources.getString(R.string.lbl_style)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtStyleCode: String? = MyApp.getInstance().resources.getString(R.string.lbl_cd0113_400)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_the_nike_air_max)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtReviewProduct: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_review_product)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeeMoreLink: String? = MyApp.getInstance().resources.getString(R.string.lbl_see_more)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRattings: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_5)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtReviewCount: String? = MyApp.getInstance().resources.getString(R.string.lbl_5_review)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJamesLawson: String? = MyApp.getInstance().resources.getString(R.string.lbl_james_lawson)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_air_max_are_always)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMonth: String? = MyApp.getInstance().resources.getString(R.string.msg_december_10_2016)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtYouMightAlsoLike: String? =
      MyApp.getInstance().resources.getString(R.string.msg_you_might_also_like)

)
