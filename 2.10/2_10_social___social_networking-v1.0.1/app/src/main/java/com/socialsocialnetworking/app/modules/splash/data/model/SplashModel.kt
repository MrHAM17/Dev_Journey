package com.socialsocialnetworking.app.modules.splash.`data`.model

import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class SplashModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSocial: String? = MyApp.getInstance().resources.getString(R.string.lbl_social)

)
