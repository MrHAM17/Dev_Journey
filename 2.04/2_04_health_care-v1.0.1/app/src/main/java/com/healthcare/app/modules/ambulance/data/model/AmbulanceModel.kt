package com.healthcare.app.modules.ambulance.`data`.model

import com.healthcare.app.R
import com.healthcare.app.appcomponents.di.MyApp
import kotlin.String

data class AmbulanceModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTopDoctor: String? = MyApp.getInstance().resources.getString(R.string.lbl_ambulance)

)
