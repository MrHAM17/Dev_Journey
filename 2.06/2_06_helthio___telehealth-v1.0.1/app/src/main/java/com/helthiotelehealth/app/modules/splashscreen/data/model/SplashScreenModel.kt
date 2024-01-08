package com.helthiotelehealth.app.modules.splashscreen.`data`.model

import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.di.MyApp
import kotlin.String

data class SplashScreenModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtHelthio: String? = MyApp.getInstance().resources.getString(R.string.lbl_helthio)

)
