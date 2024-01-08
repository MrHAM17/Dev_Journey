package com.tikpikshortvideosocialnetworking.app.modules.chooseyourinterest.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class ChooseYourInterestModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitleSection: String? =
      MyApp.getInstance().resources.getString(R.string.msg_choose_your_interest)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtChooseYourInterests: String? =
      MyApp.getInstance().resources.getString(R.string.msg_choose_your_interests)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSizeLargeTypeFilled: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_culture)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSizeLargeTypeBorder: String? = MyApp.getInstance().resources.getString(R.string.lbl_health)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSizeLargeTypeBorder1: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_comics)

)
