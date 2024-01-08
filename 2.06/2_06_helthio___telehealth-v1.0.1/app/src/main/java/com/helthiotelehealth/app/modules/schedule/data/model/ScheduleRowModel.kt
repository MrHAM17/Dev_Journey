package com.helthiotelehealth.app.modules.schedule.`data`.model

import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.di.MyApp
import kotlin.String

data class ScheduleRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtDrMarcusHorizon: String? =
      MyApp.getInstance().resources.getString(R.string.msg_dr_marcus_horizon)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtChardiologist: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_chardiologist)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDate: String? = MyApp.getInstance().resources.getString(R.string.lbl_26_06_2022)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_10_30_am)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtConfirmed: String? = MyApp.getInstance().resources.getString(R.string.lbl_confirmed)

)
