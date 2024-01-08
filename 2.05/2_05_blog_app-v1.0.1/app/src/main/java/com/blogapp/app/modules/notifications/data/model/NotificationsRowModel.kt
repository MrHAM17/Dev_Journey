package com.blogapp.app.modules.notifications.`data`.model

import com.blogapp.app.R
import com.blogapp.app.appcomponents.di.MyApp
import kotlin.String

data class NotificationsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_bezaleel_nwabia)

)
