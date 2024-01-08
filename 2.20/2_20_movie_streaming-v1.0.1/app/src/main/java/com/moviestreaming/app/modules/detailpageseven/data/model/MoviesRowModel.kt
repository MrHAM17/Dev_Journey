package com.moviestreaming.app.modules.detailpageseven.`data`.model

import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.di.MyApp
import kotlin.String

data class MoviesRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle1: String? = MyApp.getInstance().resources.getString(R.string.lbl_io_netflix)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle2: String? = MyApp.getInstance().resources.getString(R.string.msg_in_near_future_we)

)
