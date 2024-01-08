package com.streetstyleecommerceapp.app.modules.splashscreen.`data`.model

import com.streetstyleecommerceapp.app.R
import com.streetstyleecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class SplashScreenModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtStreetStyle: String? = MyApp.getInstance().resources.getString(R.string.lbl_street_style)

)
