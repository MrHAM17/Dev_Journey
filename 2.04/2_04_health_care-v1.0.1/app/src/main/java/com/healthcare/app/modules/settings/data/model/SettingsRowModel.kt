package com.healthcare.app.modules.settings.`data`.model

import com.healthcare.app.R
import com.healthcare.app.appcomponents.di.MyApp
import kotlin.String

data class SettingsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtHeartRate: String? = MyApp.getInstance().resources.getString(R.string.lbl_heart_rate)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHeartRateCount: String? = MyApp.getInstance().resources.getString(R.string.lbl_215bpm)

)
