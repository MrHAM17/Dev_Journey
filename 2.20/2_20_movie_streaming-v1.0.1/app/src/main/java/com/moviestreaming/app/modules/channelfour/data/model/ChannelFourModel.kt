package com.moviestreaming.app.modules.channelfour.`data`.model

import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.di.MyApp
import kotlin.String

data class ChannelFourModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNons: String? = MyApp.getInstance().resources.getString(R.string.lbl_live_channel)

)
