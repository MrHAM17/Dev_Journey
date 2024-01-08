package com.hiredjobsearch.app.modules.notificationsmyproposals.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class NotificationsmyproposalsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSeniorUIUXDesigner: String? =
      MyApp.getInstance().resources.getString(R.string.msg_senior_ui_ux_designer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSmallLabelRegular: String? = MyApp.getInstance().resources.getString(R.string.lbl_shell)

)
