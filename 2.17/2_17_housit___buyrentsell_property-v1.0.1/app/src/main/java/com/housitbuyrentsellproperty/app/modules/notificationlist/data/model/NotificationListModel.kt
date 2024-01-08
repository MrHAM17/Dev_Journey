package com.housitbuyrentsellproperty.app.modules.notificationlist.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class NotificationListModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtToday: String? = MyApp.getInstance().resources.getString(R.string.lbl_today)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOldernotifications: String? =
      MyApp.getInstance().resources.getString(R.string.msg_older_notifications)

)
