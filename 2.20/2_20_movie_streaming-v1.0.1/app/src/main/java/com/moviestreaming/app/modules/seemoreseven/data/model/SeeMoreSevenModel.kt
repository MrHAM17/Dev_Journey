package com.moviestreaming.app.modules.seemoreseven.`data`.model

import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.di.MyApp
import kotlin.String

data class SeeMoreSevenModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtThriller: String? = MyApp.getInstance().resources.getString(R.string.lbl_trending_movies)

)
