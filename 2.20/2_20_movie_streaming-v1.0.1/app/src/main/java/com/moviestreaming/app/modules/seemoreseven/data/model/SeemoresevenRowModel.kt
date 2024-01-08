package com.moviestreaming.app.modules.seemoreseven.`data`.model

import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.di.MyApp
import kotlin.String

data class SeemoresevenRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_jallikatta)

)
