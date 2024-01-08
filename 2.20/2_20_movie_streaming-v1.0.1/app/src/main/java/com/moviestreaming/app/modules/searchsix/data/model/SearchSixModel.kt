package com.moviestreaming.app.modules.searchsix.`data`.model

import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.di.MyApp
import kotlin.String

data class SearchSixModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtHeading: String? = MyApp.getInstance().resources.getString(R.string.msg_search_result_for2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMovies: String? = MyApp.getInstance().resources.getString(R.string.lbl_movies)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMovies1: String? = MyApp.getInstance().resources.getString(R.string.lbl_tv_channels)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMovies2: String? = MyApp.getInstance().resources.getString(R.string.lbl_playlist)

)
