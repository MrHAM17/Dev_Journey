package com.fashionistaecommerceapp.app.modules.productview.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class ProductViewModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtBlackJacket: String? = MyApp.getInstance().resources.getString(R.string.lbl_black_jacket)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSelectSize: String? = MyApp.getInstance().resources.getString(R.string.lbl_select_size)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtColor: String? = MyApp.getInstance().resources.getString(R.string.lbl_color)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtReviews: String? = MyApp.getInstance().resources.getString(R.string.lbl_reviews)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeeAll: String? = MyApp.getInstance().resources.getString(R.string.lbl_see_all)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtReviews1: String? = MyApp.getInstance().resources.getString(R.string.msg_4_8_1_024_reviews)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_134_98)

)
