package com.fashionistaecommerceapp.app.modules.reviews.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class ReviewsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFortyEight: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_8)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBasedOnReviews: String? =
      MyApp.getInstance().resources.getString(R.string.msg_based_on_1_024_reviews)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtExcellent: String? = MyApp.getInstance().resources.getString(R.string.lbl_excellent)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtGood: String? = MyApp.getInstance().resources.getString(R.string.lbl_good)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAverage: String? = MyApp.getInstance().resources.getString(R.string.lbl_average)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBellowAverage: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_bellow_average)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPoor: String? = MyApp.getInstance().resources.getString(R.string.lbl_poor)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtArianaPeter: String? = MyApp.getInstance().resources.getString(R.string.lbl_ariana_peter)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDuration: String? = MyApp.getInstance().resources.getString(R.string.lbl_1_day_ago)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_it_is_a_long_established2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtArianaPeter1: String? = MyApp.getInstance().resources.getString(R.string.lbl_ariana_peter)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDuration1: String? = MyApp.getInstance().resources.getString(R.string.lbl_1_day_ago)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_it_is_a_long_established2)

)
