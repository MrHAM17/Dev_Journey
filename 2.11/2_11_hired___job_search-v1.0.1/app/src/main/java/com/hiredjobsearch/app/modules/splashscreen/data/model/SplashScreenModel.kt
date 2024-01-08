package com.hiredjobsearch.app.modules.splashscreen.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class SplashScreenModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtHired: String? = MyApp.getInstance().resources.getString(R.string.lbl_hired)

)
