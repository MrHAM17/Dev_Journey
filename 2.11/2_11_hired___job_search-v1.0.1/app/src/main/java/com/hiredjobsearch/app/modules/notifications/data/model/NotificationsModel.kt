package com.hiredjobsearch.app.modules.notifications.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class NotificationsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNotifications: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_notifications)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMessagesNotifications: String? =
      MyApp.getInstance().resources.getString(R.string.msg_messages_notifications)

)
