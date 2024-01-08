package com.hiredjobsearch.app.modules.notifications.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class NotificationsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNewPost: String? = MyApp.getInstance().resources.getString(R.string.lbl_new_post)

)
