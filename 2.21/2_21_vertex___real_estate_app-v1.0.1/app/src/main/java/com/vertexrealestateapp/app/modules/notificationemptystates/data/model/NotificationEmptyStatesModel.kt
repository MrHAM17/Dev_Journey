package com.vertexrealestateapp.app.modules.notificationemptystates.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class NotificationEmptyStatesModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNotification: String? = MyApp.getInstance().resources.getString(R.string.lbl_notification)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNoNotifications: String? =
      MyApp.getInstance().resources.getString(R.string.msg_no_notifications)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNoNotification: String? =
      MyApp.getInstance().resources.getString(R.string.msg_no_notification)

)
