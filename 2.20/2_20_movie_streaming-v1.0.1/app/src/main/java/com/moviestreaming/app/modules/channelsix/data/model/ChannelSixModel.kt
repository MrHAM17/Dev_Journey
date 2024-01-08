package com.moviestreaming.app.modules.channelsix.`data`.model

import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.di.MyApp
import kotlin.String

data class ChannelSixModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNons: String? = MyApp.getInstance().resources.getString(R.string.lbl_live_channel)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSchedule: String? = MyApp.getInstance().resources.getString(R.string.lbl_schedule)

)
