package com.blogapp.app.modules.notifications.`data`.model

import com.blogapp.app.R
import com.blogapp.app.appcomponents.di.MyApp
import kotlin.String

data class NotificationsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtActivity: String? = MyApp.getInstance().resources.getString(R.string.lbl_activity)

)
