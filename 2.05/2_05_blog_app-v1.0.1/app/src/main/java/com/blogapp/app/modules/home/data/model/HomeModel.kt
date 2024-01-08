package com.blogapp.app.modules.home.`data`.model

import com.blogapp.app.R
import com.blogapp.app.appcomponents.di.MyApp
import kotlin.String

data class HomeModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtCategory: String? = MyApp.getInstance().resources.getString(R.string.lbl_home)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_top_stories)

)
