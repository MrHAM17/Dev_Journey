package com.moviestreaming.app.modules.exploresix.`data`.model

import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.di.MyApp
import kotlin.String

data class ExploreSixModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtHeading: String? = MyApp.getInstance().resources.getString(R.string.lbl_explore_movies)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSubHeading: String? =
      MyApp.getInstance().resources.getString(R.string.msg_find_something_you)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAction: String? = MyApp.getInstance().resources.getString(R.string.lbl_action)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMore: String? = MyApp.getInstance().resources.getString(R.string.lbl_more)

)
