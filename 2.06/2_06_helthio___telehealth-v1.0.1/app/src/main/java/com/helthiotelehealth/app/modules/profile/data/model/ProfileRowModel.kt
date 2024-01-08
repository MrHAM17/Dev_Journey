package com.helthiotelehealth.app.modules.profile.`data`.model

import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.di.MyApp
import kotlin.String

data class ProfileRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtHeartRate: String? = MyApp.getInstance().resources.getString(R.string.lbl_heart_rate)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBpm: String? = MyApp.getInstance().resources.getString(R.string.lbl_215bpm)

)
