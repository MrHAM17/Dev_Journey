package com.moviestreaming.app.modules.channelsix.`data`.model

import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.di.MyApp
import kotlin.String

data class ChannelsixRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtHeader: String? = MyApp.getInstance().resources.getString(R.string.msg_last_time_we_meet)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_02_00_am_est)

)
