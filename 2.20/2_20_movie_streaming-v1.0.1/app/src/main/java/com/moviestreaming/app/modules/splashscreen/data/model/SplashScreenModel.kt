package com.moviestreaming.app.modules.splashscreen.`data`.model

import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.di.MyApp
import kotlin.String

data class SplashScreenModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtGetStarted: String? = MyApp.getInstance().resources.getString(R.string.lbl_get_started)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWatchYourFavourite: String? =
      MyApp.getInstance().resources.getString(R.string.msg_watch_your_favourite)

)
