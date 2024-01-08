package com.hiredjobsearch.app.modules.notificationsmyproposals.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class NotificationsMyProposalsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtApplicationStatus: String? =
      MyApp.getInstance().resources.getString(R.string.msg_application_status)

)
