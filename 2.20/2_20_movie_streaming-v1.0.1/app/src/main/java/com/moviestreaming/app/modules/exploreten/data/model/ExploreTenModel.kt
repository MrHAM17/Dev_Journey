package com.moviestreaming.app.modules.exploreten.`data`.model

import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.di.MyApp
import kotlin.String

data class ExploreTenModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNons: String? = MyApp.getInstance().resources.getString(R.string.lbl_explore)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTrendingMovies: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_trending_movies)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTrendingMovies1: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_trending_movies)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTrendingMovies2: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_trending_movies)

)
