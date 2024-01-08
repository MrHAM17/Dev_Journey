package com.streetstyleecommerceapp.app.modules.payment.`data`.model

import com.streetstyleecommerceapp.app.R
import com.streetstyleecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class ImageSliderCardModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtOneHundredTwelve: String? = MyApp.getInstance().resources.getString(R.string.lbl_0112)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var imageTelevision: String? = ""

)
