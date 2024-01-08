package com.socialsocialnetworking.app.modules.notifications.`data`.model

import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class NotificationsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNotifications: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_notifications)

)
