package com.housitbuyrentsellproperty.app.modules.promotion.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class PromotionModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtHalloweenSale: String? =
      MyApp.getInstance().resources.getString(R.string.msg_halloween_sale)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOffer: String? = MyApp.getInstance().resources.getString(R.string.msg_all_discount_up)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle: String? =
      MyApp.getInstance().resources.getString(R.string.msg_limited_time_halloween)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMonth: String? = MyApp.getInstance().resources.getString(R.string.msg_october_27_2022)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHLWNForty: String? = MyApp.getInstance().resources.getString(R.string.lbl_hlwn40)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOffer1: String? = MyApp.getInstance().resources.getString(R.string.msg_use_this_coupon)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lorem_ipsum_dolor8)

)
