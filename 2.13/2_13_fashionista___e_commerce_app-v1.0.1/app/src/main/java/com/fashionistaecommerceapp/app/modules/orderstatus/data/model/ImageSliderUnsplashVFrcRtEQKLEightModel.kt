package com.fashionistaecommerceapp.app.modules.orderstatus.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class ImageSliderUnsplashVFrcRtEQKLEightModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtDelivered: String? = MyApp.getInstance().resources.getString(R.string.lbl_delivered)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDrinksJuneSeven: String? =
      MyApp.getInstance().resources.getString(R.string.msg_drinks_june_07)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var imageUnsplashVFrcRtEQKLEight: String? = ""
  ,
  /**
   * TODO Replace with dynamic value
   */
  var imageCheckmark: String? = ""

)
