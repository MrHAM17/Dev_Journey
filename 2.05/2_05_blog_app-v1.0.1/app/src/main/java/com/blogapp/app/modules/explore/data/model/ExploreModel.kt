package com.blogapp.app.modules.explore.`data`.model

import com.blogapp.app.R
import com.blogapp.app.appcomponents.di.MyApp
import kotlin.String

data class ExploreModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtCategory: String? = MyApp.getInstance().resources.getString(R.string.lbl_explore)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTopStories: String? = MyApp.getInstance().resources.getString(R.string.msg_recommended_for)

)
