package com.moviestreaming.app.modules.exploreseven.`data`.model

import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.di.MyApp
import kotlin.String

data class IoRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle1: String? = MyApp.getInstance().resources.getString(R.string.lbl_io)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle2: String? = MyApp.getInstance().resources.getString(R.string.msg_no_christmas_for)

)
