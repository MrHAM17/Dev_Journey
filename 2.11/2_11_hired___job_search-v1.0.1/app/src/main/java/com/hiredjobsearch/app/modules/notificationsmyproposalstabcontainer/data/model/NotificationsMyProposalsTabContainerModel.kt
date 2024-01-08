package com.hiredjobsearch.app.modules.notificationsmyproposalstabcontainer.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class NotificationsMyProposalsTabContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtJobDetails: String? = MyApp.getInstance().resources.getString(R.string.lbl_notifications)

)
