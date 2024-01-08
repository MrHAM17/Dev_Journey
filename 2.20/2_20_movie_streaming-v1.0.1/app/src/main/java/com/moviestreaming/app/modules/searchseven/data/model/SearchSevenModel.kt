package com.moviestreaming.app.modules.searchseven.`data`.model

import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.di.MyApp
import kotlin.String

data class SearchSevenModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtHeading: String? = MyApp.getInstance().resources.getString(R.string.msg_search_result_for)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMovies: String? = MyApp.getInstance().resources.getString(R.string.lbl_movies_6)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCast: String? = MyApp.getInstance().resources.getString(R.string.lbl_categories_1)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDrama: String? = MyApp.getInstance().resources.getString(R.string.lbl_love)

)
