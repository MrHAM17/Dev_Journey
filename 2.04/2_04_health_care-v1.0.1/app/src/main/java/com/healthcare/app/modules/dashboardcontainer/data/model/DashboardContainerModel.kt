package com.healthcare.app.modules.dashboardcontainer.`data`.model

import com.healthcare.app.R
import com.healthcare.app.appcomponents.di.MyApp
import kotlin.String

data class DashboardContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtHome: String? = MyApp.getInstance().resources.getString(R.string.lbl_home)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMessages: String? = MyApp.getInstance().resources.getString(R.string.lbl_messages)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAppointment: String? = MyApp.getInstance().resources.getString(R.string.lbl_appointment)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtProfile: String? = MyApp.getInstance().resources.getString(R.string.lbl_profile)

)
