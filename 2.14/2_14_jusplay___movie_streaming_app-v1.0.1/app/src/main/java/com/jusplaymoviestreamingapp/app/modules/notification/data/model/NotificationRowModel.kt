package com.jusplaymoviestreamingapp.app.modules.notification.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class NotificationRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtDuration1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_let_s_get_100_cashback)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDuration2: String? = MyApp.getInstance().resources.getString(R.string.lbl_10_minutes_ago)

)
