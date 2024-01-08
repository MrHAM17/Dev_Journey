package com.moviestreaming.app.modules.channelfour.`data`.model

import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.di.MyApp
import kotlin.String

data class ChannelfourRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtKTV: String? = MyApp.getInstance().resources.getString(R.string.lbl_k_tv)

)
