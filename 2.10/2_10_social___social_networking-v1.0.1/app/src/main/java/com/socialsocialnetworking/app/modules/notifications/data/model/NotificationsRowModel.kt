package com.socialsocialnetworking.app.modules.notifications.`data`.model

import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class NotificationsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtKevinHasFollowed: String? =
      MyApp.getInstance().resources.getString(R.string.msg_kevin_has_followed)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDuration: String? = MyApp.getInstance().resources.getString(R.string.lbl_1_hour_ago)

)
