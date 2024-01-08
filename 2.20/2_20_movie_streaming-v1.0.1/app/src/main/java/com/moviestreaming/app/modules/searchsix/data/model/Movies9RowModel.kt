package com.moviestreaming.app.modules.searchsix.`data`.model

import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.di.MyApp
import kotlin.String

data class Movies9RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle1: String? = MyApp.getInstance().resources.getString(R.string.lbl_turner_hooch)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle2: String? = MyApp.getInstance().resources.getString(R.string.lbl_sub_title)

)
